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
| `POST` | `/v1/restaurants/{id}/cart/checkout` | [cart_screen.dart](../lib/features/catalogue/presentation/cart_screen.dart) | `fulfilment_type` (`delivery`/`pickup`), `payment_method` (`cod`, or `wallet` when the balance covers it all), `use_wallet`, `address_id` on delivery only, optional `note` (whole order, up to 500 characters). `delivery_instructions`: codes `leave_at_door`, `no_bell`, `no_call`, `leave_with_security`, `pet_at_home` (at most five, [delivery_instruction.dart](../lib/features/catalogue/data/delivery_instruction.dart)), delivery only, seen by the rider alone after accepting. `no_cutlery: true`, seen by the restaurant alone, kept on pickup. Both are echoed on the order and shown on the order screen. A `422` under `delivery_instructions` is a developer message (a code this server build does not know), never shown: the app places the order again without the chips. |
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

### Home cards and history (live, November 2026)

- `featured_dish: {id, name, price, is_veg}` on each restaurant in `GET /v1/restaurants` and
  `GET /v1/home`: always a bestseller, never sold out, and absent for most shops, so the card works
  without it. Shown on the photo ("Non Veg Loaded · ₹202"); `id` is unused for now.
- `photos`: up to 3 on lists, in the merchant's order, the same shape as `GET /v1/restaurants/{id}`
  (which still sends the whole carousel). Two or more make the card's photo swipeable.
- `restaurant.area` and `restaurant.logo_url` on each order in `GET /v1/orders`: the history card's
  second line and picture. `logo_url` is null for most shops today, so the placeholder stays.

Every photo link here is signed for a day. The app caches the picture, keyed on the link without its
signature ([image_disk_cache.dart](../lib/core/network/image_disk_cache.dart)), never the link; a
stale link answers `403` and the card shows its fallback until the list is fetched again.

### Ratings (live, November 2026)

The rating screen ([rate_order_screen.dart](../lib/features/catalogue/presentation/rate_order_screen.dart))
rates the delivery, the food and restaurant, and single dishes, in one call to
`POST /v1/orders/{id}/review`:

```json
{
  "rating": 4,
  "comment": "Biryani was great",
  "dishes": {"41": 5, "44": 3},
  "tags": ["tasty", "good_packaging"],
  "rider": {"rating": 5, "tags": ["on_time"], "comment": "Thanks!"}
}
```

- `rating` (the food and restaurant, 1–5) is the only required field. `rider` is never sent for a
  pickup; its `comment` and `tags` are private by design, never public anywhere.
- The window is **7 days**, one review per order. Refusals about the order (not delivered, already
  reviewed, past the window) are `422` with a message in `errors` written for the customer; the app
  shows it verbatim.
- Refusals under `tags`/`tags.*` and `rider.tags`/`rider.tags.*` are developer messages naming codes
  the server does not know, so they are never shown. The app sends only codes from its own lists,
  each under its own subject, and if one is refused anyway it sends the review again without
  `tags` or `rider.tags`, keeping the stars, the dishes and both comments
  ([storefront_repository.dart](../lib/features/catalogue/data/storefront_repository.dart)).
- Tags are checked by subject, not sentiment: a delivery code sent as a food tag is a `422`, but any
  food code is accepted at any star count. The app offers praise for 4–5 stars and issues for 1–3.
  Codes live in [review_tags.dart](../lib/features/catalogue/data/review_tags.dart); all 24 are
  accepted.
- On each order: `review` (null or `{rating, rider_rating}`), `can_review`, and
  `rider: {name, photo_url}`. `can_review` uses the endpoint's own rule, so the rating prompts
  (order screen, history cards, home) only show when the server would accept. `photo_url` stays null:
  riders have no photo, and an identity document is never served as an avatar.
- Food tags are public on `GET /v1/restaurants/{id}/reviews`, shown as chips under each review
  (codes this build cannot name are left out).
- `order.review_requested` push about 45 minutes after delivery, with `order_id`, skipped if already
  rated. It opens the order, where the rating card is.
- Before `review` reached the app, a rated order was remembered on the phone
  ([rated_orders.dart](../lib/features/catalogue/state/rated_orders.dart)); the server's `review`
  wins whenever it is sent.
- Not built server-side: an alert to the operations team on `asked_extra_money` or `rude`. Both are
  stored against the rider; nothing reaches a person yet.

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

## Wallet

Screen: [wallet_screen.dart](../lib/features/wallet/presentation/wallet_screen.dart) and
[wallet_widgets.dart](../lib/features/wallet/presentation/wallet_widgets.dart); state:
[wallet_controller.dart](../lib/features/wallet/state/wallet_controller.dart).

| Method | Path | Used for |
|---|---|---|
| `GET` | `/v1/wallet` | `balance` and the latest 50 `transactions`, newest first: `id`, `type` (`topup`, `order_payment`, `refund`), `amount`, `direction`, `description`, `order_number`, `created_at`. Read on open and on pull. |
| `POST` | `/v1/wallet/topups` | `{"amount": 500}` (₹10 to ₹10,000; a 422 outside that, or past the ₹10,000 balance ceiling, is shown in the server's words). Answers with the Razorpay `razorpay_order_id`, the public `razorpay_key_id`, `amount_paise`, `currency`. The secret never reaches the app. |
| `POST` | `/v1/wallet/topups/{id}/verify` | The three `razorpay_*` fields from checkout. The server checks the signature and credits the wallet once, however often it is called; the app moves the balance only on this answer. If it never arrives (a dropped connection after paying), the Razorpay webhook credits it and the app re-reads the wallet and says the payment is being confirmed. |

The app also reads, when sent, on each transaction: `status` (`success` / `pending` / `failed`;
missing means success, since the ledger holds settled money), `payment_method` or `method` (`upi`,
`card`, `netbanking`…), a gateway `reference` (or `razorpay_payment_id`), and `balance_after`; and
`updated_at` on the wallet. Without them the app shows what it can truthfully derive: top-ups as
"Online payment", order payments as "Nexmile Wallet", refunds as "Refund to wallet", every entry
as successful, and "Updated" as the time the balance was last read.

Filters (all / money added / money spent), search and the date range run on the phone over those
50 entries. Not yet possible without the server: older history (needs a paged
`GET /v1/wallet/transactions?page=`), and a downloadable PDF receipt (the app shares a text receipt
built from the transaction instead).

## 7. Support chat (live)

The backend's contract is "Nexmile Support Bubble — Flutter Work Item" (and `docs/SUPPORT.md` in the
backend repository). **The endpoints are live on production**, and builds talk to them by default
([support_repository.dart](../lib/features/support/data/support_repository.dart)). The server's own
switch is `chat_enabled` in `/v1/app/config`. `--dart-define=NEXMILE_SUPPORT=demo` swaps in an
on-phone demo for showing the screens offline
([demo_support_repository.dart](../lib/features/support/data/demo_support_repository.dart)), with a
banner saying the answers are samples; `NEXMILE_SUPPORT=off` hides the chat.

| Method | Path | Used for |
|---|---|---|
| `GET` | `/v1/app/config` | No token. `{"data": {"support": {"phone", "email", "chat_enabled"}, "locales": […]}}` ([account_models.dart](../lib/features/account/data/account_models.dart), which still reads the older flat `support_phone` style). `phone` is null until a real number is set, and every call button hides on null. **`chat_enabled: false` is the chat's deliberate off switch: the bubble, "Need help?", the History menu item and "Chat with us" all hide** (not the same as `available: false`, which keeps the bubble for the phone number). Read at launch by the bubble. |
| `GET` | `/v1/support/entry` | Reads without creating a thread: a customer who never asked for help gets `unread: 0, has_open_thread: false, available: true`. The home bubble: `label` (server wording), `unread` (badge), `available` (false when the platform cannot be reached: the bubble still shows, and the chat leads with a person and the phone number). |
| `POST` | `/v1/support/conversations` | `order_id` (optional) and `language`. Answers with the open thread if there is one; a different `order_id` moves that thread to the new order, with a system line saying so. **Marks the thread read**, so opening the chat is one call and clears the badge. |
| `GET` | `/v1/support/conversations/{id}` | The thread and `pending_reply`, which brings back the typing indicator after an app restart. Fetching it marks it read. |
| `GET` | `/v1/support/conversations/{id}/messages?after_id=` | Polled every 2 s while a reply is outstanding, for at most 30 s; never while idle. `meta.pending_reply` keeps the typing dots for a second question, and ends the wait early when a job finished with no answer. |
| `POST` | `/v1/support/conversations/{id}/messages` | `content` and `client_id` (a UUID made per message, sent again unchanged on retry). `202` with the saved message. |
| `POST` | `/v1/support/conversations/{id}/order` | `{"order_id": 10432}` (a number, though the `select_order` action carries it as a string): the customer picked one of several live orders. Answers with `meta.pending_reply: true`, and the reply is polled for exactly as after a message. Refusals: `404` (not this customer's order) is a small note in the chat; `409` (thread closed) shows the chat as closed with "Start a new chat"; `503` (platform or order system unreachable) is tried once more after 2 s, then left as a small note while the customer keeps typing. None of them closes the chat. |
| `POST` | `/v1/support/conversations/{id}/handover` | `system_message` is shown exactly as sent; the app writes no promise of its own. |
| `POST` | `/v1/support/conversations/{id}/close` | The composer becomes "Start a new chat". |
| `POST` | `/v1/support/messages/{id}/feedback` | `{"value": "up"}` or `{"value": "down"}` (confirmed). |

- Senders `customer`, `ai`, `agent`, `system` are drawn four ways. Every AI message carries the
  "AI assistant" label; a person shows a first name, an initial and a bordered bubble, never the AI's
  style. `system` is centred text, not a bubble.
- Action codes `track_order`, `view_order`, `call_rider`, `reorder`, `leave_review`, `talk_to_person`,
  `close_thread`, and `select_order` (one button per live order when there are several). The button
  shows the translated `label` alone; it already names the restaurant, and `title` (the bare name) is
  not drawn. A finished order gets `view_order` (order details) rather than `track_order`. Unknown
  codes are skipped silently. Order destinations fetch fresh data on arrival
  (the rider's number comes from `/track`), so nothing shown is read out of the AI's words.
- The thread and the draft live on the phone (shared preferences) so the chat opens before the network
  answers and works read-only offline. Both are wiped on sign-out and account deletion.
- Failures: a message that does not send stays on screen as "Not sent · Try again"; a reply that has
  not come in 30 s (or that the server says is no longer being written) shows "That took too long"
  with "Try again", which **asks again**: the last unanswered question is sent again with its own
  `client_id`, which the server does not store twice but answers again when nothing is in flight (a
  worker that died mid-job). `429` asks the customer to slow down and is never retried automatically.
- `503` means the support platform itself cannot be reached, so nothing sent is saved anywhere: the
  chat offers the phone number and "Try again", not a person (that would not get through either), and
  a message that fails shows "Not sent". An AI that is merely down is handled on the server: it still
  answers `202`, keeps the message and hands over to a person.
- After a handover the customer can keep typing; it is added to the thread and the AI stays quiet.
- Push `support.reply` (`type` and `conversation_id` only; no preview, by design, since a lock screen
  is read by whoever holds the phone) opens the chat
  ([push_destination.dart](../lib/core/push/push_destination.dart)).
- Ways in: the bubble, docked in the bottom bar beside the Delivery / History tabs (so it never
  covers the basket bar or a place-order button, and needs no dismissing). It shows the nexmile CX
  logo where it fits beside the tabs and the logo's mark in a circle where it does not, with a
  brand-coloured ring that glows for two beats every few seconds and whenever a reply arrives.
  Also "Need help?" on the order screen and on live tracking (with `order_id`), "Need help?" in a
  History card's ⋮ menu, and "Chat with us" on Help.

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
