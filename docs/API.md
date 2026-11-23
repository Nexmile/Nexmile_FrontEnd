 # Nexmile — APIs the app calls

Every network call the customer app makes, and the screen that makes it.

**Base URL** `https://api.nexmile.in/api`
Overridable at build time without touching source:

```bash
flutter run --dart-define=NEXMILE_API_BASE_URL=http://10.0.2.2:8000/api
```

Defined in [app_config.dart](../lib/core/config/app_config.dart). `10.0.2.2` is how the Android
emulator reaches the host machine; on a physical device use the machine's LAN address.

**Every request carries** `Accept: application/json` — without it the API answers HTML on an error
and the decoder gets a login page instead of a payload. Requests with a body add
`Content-Type: application/json`, and authenticated ones add `Authorization: Bearer <token>`.
All of this is centralised in [api_client.dart](../lib/core/network/api_client.dart).

**Totals: 28 endpoints**, 27 of them in active use — 6 auth and profile (one unused, noted below),
6 address, 4 restaurants, 6 cart, 6 checkout and orders.

---

## 1. Authentication

Customer auth is OTP only. There is no registration, password or password-reset endpoint —
the account is created by the server on the first successful code verification.

| Method | Path | Called from | Notes |
|---|---|---|---|
| `POST` | `/v1/auth/otp/request` | [login_screen.dart](../lib/features/auth/presentation/login_screen.dart) | Body carries **either** `email` **or** `phone`, never both. Returns `resend_after` for the cooldown, and `debug_code` outside production. |
| `POST` | `/v1/auth/otp/verify` | [otp_verification_screen.dart](../lib/features/auth/presentation/otp_verification_screen.dart) | Same identifier plus `code` and `device_name`. Returns the token pair and the user. |
| `POST` | `/v1/auth/refresh` | [api_client.dart](../lib/core/network/api_client.dart) | Fired automatically on a 401. Concurrent 401s share one refresh, and one failure drops the session rather than looping. |
| `POST` | `/v1/auth/logout` | [profile_screen.dart](../lib/features/profile/profile_screen.dart) | The local session is cleared whether or not this succeeds — a signed-out customer must not stay signed in because the network was down. |
| `GET` | `/v1/profile` | [profile_screen.dart](../lib/features/profile/profile_screen.dart) | Cached copy renders first, then this refreshes it. |
| `GET` | `/v1/auth/me` | — | **Built but not called by any screen.** `/v1/profile` returns the same customer with more fields, so the profile screen uses that instead. Kept because the refresh path may want a cheap identity check. |
| `POST` | `/v1/devices` | [device_registrar.dart](../lib/core/push/device_registrar.dart) | Push registration: after sign-in, on every token rotation, and once at launch on a restored session. Idempotent. The payload shape is assumed, not confirmed — see [PUSH-SETUP.md](PUSH-SETUP.md). |
| `DELETE` | `/v1/devices` | [device_registrar.dart](../lib/core/push/device_registrar.dart) | Runs on sign-out **before** the session is cleared; afterwards it can only 401. Failures are swallowed — an orphaned device row is the server's to reap, and the customer is signed out either way. |

### Rate limits worth knowing
Codes are capped at 5 per hour per identifier, 60 seconds apart, and five wrong attempts burn a
code. A `429` surfaces as "Too many attempts"; a `403` means the account is suspended.

---

## 2. Address book

Delivery is limited to 1 km, so latitude and longitude are mandatory on every write and the
map-pin step is not skippable. All six endpoints are used, plus one new one for the door photo.

| Method | Path | Called from | Notes |
|---|---|---|---|
| `GET` | `/v1/addresses` | [address_book_screen.dart](../lib/features/address/presentation/address_book_screen.dart) | Also read by the cart, so checkout has an address to offer. |
| `GET` | `/v1/addresses/{id}` | [address_controller.dart](../lib/features/address/state/address_controller.dart) | Single re-read after a delete promotes a new default. |
| `POST` | `/v1/addresses` | [address_map_screen.dart](../lib/features/address/presentation/address_map_screen.dart) | Coordinates are sent as numbers, not strings. Empty optional fields are dropped rather than sent blank. `line1` is what the customer types (flat, floor, house number); `line2`, `landmark`, `city`, `state` and `pincode` come from the pin's reverse geocode. `contact_name` and `contact_phone` are the receiver: the customer themselves by default, or someone else. A new address is sent with `is_default: true`, because it is where the customer just chose to deliver. |
| `PATCH` | `/v1/addresses/{id}` | [address_map_screen.dart](../lib/features/address/presentation/address_map_screen.dart) | Same payload, used when correcting a saved address. |
| `DELETE` | `/v1/addresses/{id}` | [address_book_screen.dart](../lib/features/address/presentation/address_book_screen.dart) | When the deleted one was the default, the list is re-read — the server promotes another and the app must not be left with none. |
| `POST` | `/v1/addresses/{id}/default` | [address_book_screen.dart](../lib/features/address/presentation/address_book_screen.dart) | The default is what `GET /v1/restaurants` is anchored on. Picking a saved address in "Select a location" calls this. |
| `POST` | `/v1/addresses/{id}/photo` | [address_map_screen.dart](../lib/features/address/presentation/address_map_screen.dart), [address_book_screen.dart](../lib/features/address/presentation/address_book_screen.dart) | `multipart/form-data`, one file in field `photo`: jpg, jpeg, png or webp, up to 4 MB (the app sends at most 1600 px a side, usually 150–500 KB). **Must send `Accept: application/json`**, or a failed validation is a 302 redirect instead of a `422` with `errors.photo`; `ApiClient.upload` does. Answers with the address, `photo_url` filled in. A second upload replaces the first. Sent after the address saves; if it fails, the address stays saved and the customer is told the photo did not upload. |
| `DELETE` | `/v1/addresses/{id}/photo` | [address_book_screen.dart](../lib/features/address/presentation/address_book_screen.dart), [address_map_screen.dart](../lib/features/address/presentation/address_map_screen.dart) | Takes the photo off. Answers with the address, `photo_url` null. From a saved card's camera button, or "Remove" while editing (sent on save). |

Every address resource carries `photo_url`, null when there is none. It is a signed link that
**lasts 3 hours** (dish photos last 24), on purpose: with the coordinates beside it, it says
where someone lives. Never store the URL; refetch the address or the order for a fresh one.
`contact_name` and `contact_phone` are validated server-side with `^[6-9]\d{9}$`, the same rule
the app uses, and are snapshotted onto each order.

"Use current location" on "Select a location" saves nothing: the storefront queries
`GET /v1/restaurants` by `latitude`/`longitude` instead of `address_id`, and checkout asks
for a saved address before an order can be placed.

**Address search** calls Google Places (New) directly from the app, not through this API:
`POST https://places.googleapis.com/v1/places:autocomplete` while typing, then
`GET https://places.googleapis.com/v1/places/{placeId}` for the one picked, under one
session token so a search is billed once. It uses the app's own Maps key, read at run time
from the native config, so **Places API (New)** must be enabled in Google Cloud and allowed
on the Android and iOS Maps keys. Without it the app falls back to the phone's own geocoder.

A `422` here comes back as `errors.<field>[0]` and is shown under the field that caused it,
verbatim — the server's wording is more accurate than anything the app could invent.

---

## 3. Restaurants

| Method | Path | Called from | Notes |
|---|---|---|---|
| `GET` | `/v1/restaurants` | [home_tab.dart](../lib/features/catalogue/presentation/home_tab.dart), [search_tab.dart](../lib/features/catalogue/presentation/search_tab.dart) | Query: `address_id` **or** `latitude`+`longitude`, plus optional `search` and `service_category`. The saved address wins — the API knows that pin better than a fresh GPS read, and it is the one checkout validates the 1 km radius against. |
| `GET` | `/v1/restaurants/deals` | [home_tab.dart](../lib/features/catalogue/presentation/home_tab.dart) | Food Rescue: surplus food, discounted, time-limited. A failure here is swallowed — deals are a nice-to-have and must not take the restaurant list down with them. |
| `GET` | `/v1/restaurants/{id}` | [restaurant_screen.dart](../lib/features/catalogue/presentation/restaurant_screen.dart) | `distance_metres` is absent when fetched directly, so no distance is shown rather than "0.0 km". Carries `photos` (up to eight, merchant order, signed URLs) — storefront only, so a list of twenty shops does not ship a hundred and sixty signed URLs. `banner_url` stays the hero and leads the carousel. |
| `GET` | `/v1/restaurants/{id}/menu` | [restaurant_screen.dart](../lib/features/catalogue/presentation/restaurant_screen.dart) | Returns `menu` (categories) **and** a separate `uncategorised` bucket. Both are rendered — a shop that never made categories would otherwise look empty. Menu items carry `rating` / `rating_count`, null until three people have rated; the badge is hidden on null rather than shown as zero. Menu search, filters (Veg / Egg / Non-veg, Rated 4.0+, Offers) and sorting all run on the device over this one response, so they need no endpoint. `is_bestseller` (boolean) marks a restaurant's top 5 dishes by quantity sold, recomputed nightly from delivered orders; a dish needs 5 units sold in 30 days to qualify, so a new restaurant or city returns every dish `false`. That is correct: the badge and the Bestseller chip simply stay hidden until some dish qualifies. |
| `GET` | `/v1/restaurants/{id}/reviews` | [reviews_screen.dart](../lib/features/catalogue/presentation/reviews_screen.dart) | Newest first, paginated. `meta` carries `rating`, `rating_count` and a per-star `breakdown` for the histogram. `?with_comment=1` hides ratings with no words. **Never cached** — moderation can take a review down between two reads, so the screen always starts again at page one. |

`is_open` gates ordering. When it is false, `within_operating_hours` says *why*: inside its hours
means "not taking orders", outside means "closed right now". Only one of those is worth waiting for.

---

## 4. Cart

Carts live on the server, one per restaurant, so an unfinished basket survives a reinstall and the
app never has to enforce a single-restaurant rule itself.

| Method | Path | Called from | Notes |
|---|---|---|---|
| `GET` | `/v1/restaurants/{id}/cart` | [cart_screen.dart](../lib/features/catalogue/presentation/cart_screen.dart), [restaurant_screen.dart](../lib/features/catalogue/presentation/restaurant_screen.dart) | A `404` means "no basket yet" and is not surfaced as an error. |
| `POST` | `/v1/restaurants/{id}/cart/items` | [customise_sheet.dart](../lib/features/catalogue/presentation/widgets/customise_sheet.dart) | `menu_item_id`, `quantity`, `option_ids`, `notes`. A dish with a required option group goes through the sheet first, so the 422 never happens. |
| `PATCH` | `/v1/restaurants/{id}/cart/items/{itemId}` | [cart_screen.dart](../lib/features/catalogue/presentation/cart_screen.dart) | The id is the **cart-item** id, not the menu-item id. Quantity `0` removes the line, so the minus button needs no special case. |
| `DELETE` | `/v1/restaurants/{id}/cart/items/{itemId}` | [cart_screen.dart](../lib/features/catalogue/presentation/cart_screen.dart) | Used to drop sold-out lines in one go. |
| `DELETE` | `/v1/restaurants/{id}/cart` | [cart_screen.dart](../lib/features/catalogue/presentation/cart_screen.dart) | "Clear cart". |
| `GET` | `/v1/carts` | [app_shell.dart](../lib/features/shell/app_shell.dart) | Every restaurant with an unfinished basket. Powers the "you left something at ___" bar above the navigation bar. |
| `POST` | `/v1/restaurants/{id}/cart/coupon` | [cart_screen.dart](../lib/features/catalogue/presentation/cart_screen.dart) | Body `{"code": "WELCOME50"}`, sent in capitals. Answers with the full cart: `totals.discount_total` filled in and an `applied_coupon` block (the app needs only its `code`; `title` and a discount amount are shown when present). A refusal is `422` under `errors.code`, shown under the field word for word. The coupon lives on the cart, so the bill shows the saving before checkout. |
| `DELETE` | `/v1/restaurants/{id}/cart/coupon` | [cart_screen.dart](../lib/features/catalogue/presentation/cart_screen.dart) | Takes it off. Answers with the full cart. |

Every mutation returns the whole cart, so app state is **replaced** from the response rather than
patched locally. Totals, the minimum, sold-out lines and `can_checkout` are all the server's answer;
recomputing any of them on the client would only drift.

---

## 5. Checkout and orders

| Method | Path | Called from | Notes |
|---|---|---|---|
| `POST` | `/v1/restaurants/{id}/cart/checkout` | [checkout_sheet.dart](../lib/features/catalogue/presentation/widgets/checkout_sheet.dart) | `fulfilment_type` (`delivery`/`pickup`), `payment_method` (`cod` — cash is the only method today), `address_id` on delivery only, optional `note`. |
| `GET` | `/v1/orders` | [orders_tab.dart](../lib/features/catalogue/presentation/orders_tab.dart) | Optional `active=1`. In-flight orders are lifted above finished ones. |
| `GET` | `/v1/orders/{id}` | [order_status_screen.dart](../lib/features/catalogue/presentation/order_status_screen.dart) | Full order: items, timeline, bill, pickup code. Also the two fixed ends of the journey — `delivery_address.latitude/longitude` and `restaurant.latitude/longitude` — which the tracking map draws as the home and shop pins. **Either can be null** (a merchant who never set a location, an address saved before coordinates were required) and the map draws what it has. Never geocoded from the address text: it costs per call and puts narrow streets on the wrong side. |
| `GET` | `/v1/orders/{id}/track` | [order_status_screen.dart](../lib/features/catalogue/presentation/order_status_screen.dart) | Small and cheap, polled every 8 seconds while in flight. Polling stops the moment the order finishes, so a delivered order does not keep a timer alive. Carries the rider's name, phone and live position. |
| `POST` | `/v1/orders/{id}/cancel` | [order_status_screen.dart](../lib/features/catalogue/presentation/order_status_screen.dart) | Body: `reason`. Only allowed while the order is `placed`; after that the API returns 422, so the button is hidden rather than left to fail. |
| `POST` | `/v1/orders/{id}/review` | [rate_order_screen.dart](../lib/features/catalogue/presentation/rate_order_screen.dart) | `rating` (required), optional `comment`, and an optional `dishes` object keyed by **menu item** id. Only dishes the customer actually rated are sent — an untouched dish is not a one-star dish. Each order line carries `menu_item_id`; a line without one (an old order) offers no stars rather than being rated against whichever dish shares that number. |
| `GET` | `/v1/orders/{id}/invoice` | [order_status_screen.dart](../lib/features/catalogue/presentation/order_status_screen.dart) | The one non-JSON call: a printable HTML tax invoice, opened in the browser rather than parsed. |

Everything is re-checked server-side at checkout — availability, opening hours, the 1 km radius,
the minimum — so a `422` is expected even when the cart looked fine a moment earlier. Whatever
comes back in `errors.<field>[0]` is shown to the customer word for word.

Order status is read from `status`, but the **label** shown on screen is the server's
`status_label`. The server knows about statuses this build may not; an unrecognised one decodes to
`unknown` and renders neutrally instead of crashing.

---

### Home and tracking extras (built server-side, deploying)

From the backend's November 2026 reply. Each is read already and hidden until sent, so it lights up
with no app release:

- `offers` on every restaurant in `GET /v1/restaurants` and `GET /v1/home` is **already live**:
  `[{label, type}]`, first one shown. Labels arrive translated, so they are printed as sent, never
  templated. `type` is `food_rescue` or `free_delivery` today (coupons will add one).
- `eta_min_minutes` / `eta_max_minutes` on each restaurant in both lists: cooking plus the ride, never
  under 15, the same speed figure the tracking countdown uses. The card shows "25–30 min".
  **Absent** (not null) on `GET /v1/restaurants/{id}`, which has no customer position, so the
  restaurant page reuses the window from the card it was opened from, and otherwise falls back to
  `avg_prep_time_minutes`.
- `POST /v1/orders/{id}/reorder` ([reorder_flow.dart](../lib/features/catalogue/presentation/reorder_flow.dart)):
  answers with the cart (same shape as `GET .../cart`) plus `skipped: [{name}]`. It **replaces** that
  restaurant's basket, so the app asks first when the basket has dishes in it, waits behind a spinner
  (never optimistic), opens the cart, and names what was left out. Offered on the home "Order again"
  row, on delivered orders in the Orders tab and on a delivered order's screen.
- `rider.rating` (with `rating_count`) in `GET /v1/orders/{id}/track`: null until enough ratings, and
  the badge is hidden on null. `rider.photo_url` is always null for now, by design (who takes it,
  whether a rider can decline, what happens when they leave are unanswered), so the card shows the
  rider's initial.
- `restaurant.id` on each order in `GET /v1/orders` lets "Order again" open the restaurant.
- `menu_item_id` is on every order line, and `item_option_id` on every option (null once that choice
  is removed). The app uses the reorder endpoint rather than rebuilding a cart from these.

---

## 6. Profile page extras

The profile page (top-right avatar on the storefront, or the Profile tab) also uses calls that
already exist: `GET`/`PATCH /v1/profile`, the wallet, `GET /v1/favourites`, the devices list and
account deletion. The ones below were asked of the backend in November 2026. Until each one is
live the app treats a `404` as "nothing yet", so the page still works.

State as of the backend's November 2026 reply: **preferences** and **feedback** are built and go
live with the next deploy. **Coupons** and **app config** wait on business decisions (who creates
coupons and who funds the discount; the real support numbers, hours and FAQ text). **Safety reports**
are not built, on purpose: nothing can reach a person yet (no SMS gateway), so the app has no report
button at all and the safety screen is "Call 112" first, then the Nexmile line.

| Method | Path | Called from | Notes |
|---|---|---|---|
| `GET` | `/v1/profile/preferences` | [account_controller.dart](../lib/features/account/state/account_controller.dart) | `data: {veg_mode, promotional_notifications}`, both booleans. Read when the storefront first loads and when the profile opens, so veg mode set on one phone follows the customer to another. |
| `PATCH` | `/v1/profile/preferences` | [profile_screen.dart](../lib/features/profile/profile_screen.dart), [account_sheets.dart](../lib/features/account/presentation/account_sheets.dart) | Sends only the field that changed; answers with both. Shown at once and put back if refused. A `404` keeps the choice on the phone alone. Marketing pushes should skip anyone with `promotional_notifications: false`; order updates always go. |
| `GET` | `/v1/coupons` | [account_screens.dart](../lib/features/account/presentation/account_screens.dart) | `data: [...]`, only coupons this customer can use now. Each: `id`, `code`, `title`, `description`, `discount_type` (`flat` or `percent`), `discount_value`, `max_discount`, `min_order_value`, `valid_until` (ISO 8601), `restaurant` (`{id, name}`, or null for every restaurant), `terms` (list of strings). A coupon without a `code` is skipped. The profile tile shows how many. |
| `GET` | `/v1/app/config` | [account_screens.dart](../lib/features/account/presentation/account_screens.dart), [account_sheets.dart](../lib/features/account/presentation/account_sheets.dart) | `data: {support_phone, support_whatsapp, support_email, safety_phone, support_hours, terms_url, privacy_url, faqs: [{question, answer}]}`. Every field may be null; a missing one hides its button. Phones are digits only, WhatsApp with the country code (`91…`). |
| `POST` | `/v1/feedback` | [account_sheets.dart](../lib/features/account/presentation/account_sheets.dart) | `rating` (1–5, required), `message` (up to 1000 characters, may be empty), `platform` (`android`/`ios`, optional), `app_version` (such as `1.4.0 (12)`, optional). Answers `201`. Read at `/admin/feedback`, filterable by build. |

Veg mode is the saved default for the storefront's "Pure veg" filter, and opens every menu on its
veg dishes. The customer can still switch either off for the visit. With the filter on, the app sends
`veg_only=1` to both `GET /v1/restaurants` and `GET /v1/home`. The home filters its restaurant
sections (banners, cuisine tiles and collections stay, as merchandising) and echoes
`meta.veg_only: true`; the curated home is kept only when that echo comes back, so a server that
ignored the flag falls back to the plain veg list rather than showing non-veg restaurants.

---

## Error handling

| HTTP | Meaning in this app |
|---|---|
| `401` | One automatic refresh and retry. If the refresh fails, the session is dropped and the customer is sent back to sign-in. |
| `403` | Account suspended. |
| `404` | On a cart, "no basket yet". Elsewhere, an error. |
| `422` | Validation. `errors.<field>[0]` is shown verbatim, under the field where one exists. |
| `429` | Rate limited — "too many attempts". |
| `5xx` / unparseable body | Generic "something went wrong". An HTML error page does not crash the decoder. |

Mapping lives in [api_exception.dart](../lib/core/network/api_exception.dart) and
[auth_failure.dart](../lib/features/auth/data/auth_failure.dart).

## Watching the calls live

Debug builds log every request and response through
[api_log.dart](../lib/core/network/api_log.dart), which sits inside `ApiClient` so all 28 endpoints
pass through it.

```
flutter run
```

Output appears in that console and, in Android Studio, under **Logcat** with the filter:

```
package:com.nexmile.app nexmile.api
```

Lines go out through `debugPrint`, so they reach logcat under the `flutter` tag whether or not a
debugger is attached — `dart:developer`'s `log()` only reaches the VM service, which is why the
filter matches on the `[nexmile.api]` prefix rather than on a tag.

A call looks like this:

```
[nexmile.api] → POST /v1/auth/otp/request
   headers: {Accept: application/json, Content-Type: application/json}
   payload: {
     "phone": "9876543210"
   }
[nexmile.api] ← ✓ 200 POST /v1/auth/otp/request  (412ms)
   response: {
     "message": "Code sent",
     "data": { "resend_after": 60, "debug_code": null }
   }
```

**Nothing is logged from a release build.** Every method is a no-op behind `kDebugMode`, so the
tree shaker removes the whole file — a shipped app cannot leak a customer's session. Even in debug,
`Authorization` is reduced to `<redacted N chars>` (so "was a token attached?" stays answerable) and
`code`, `password`, `token`, `access_token` and `refresh_token` are replaced with `<redacted>`.
Bodies over 2000 characters are truncated, because Logcat drops long lines rather than wrapping
them.

## A note on decoding

The generated schema types several numerics and booleans as `string`, and money arrives as a JSON
number in some places and a decimal string in others. Every scalar is coerced on the way in — see
the helpers at the top of
[storefront_models.dart](../lib/features/catalogue/data/storefront_models.dart). A storefront that
crashes because a price came back as `"249.00"` is not worth shipping.
