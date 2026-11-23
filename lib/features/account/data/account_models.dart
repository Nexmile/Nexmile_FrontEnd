import 'package:flutter/foundation.dart';

import '../../catalogue/data/storefront_models.dart'
    show asBool, asDouble, asString, asMapList, asDate;

/// The customer's settings that follow them from phone to phone, as
/// `GET /v1/profile/preferences`.
@immutable
class AccountPreferences {
  const AccountPreferences({
    this.vegMode = false,
    this.promotions = true,
  });

  /// Opens the storefront and every menu on veg-only.
  final bool vegMode;

  /// Offers and new-restaurant notifications. Order updates are not a
  /// preference: they are always sent.
  final bool promotions;

  static AccountPreferences fromJson(Map<String, dynamic> json) =>
      AccountPreferences(
        vegMode: asBool(json['veg_mode']),
        promotions: asBool(json['promotional_notifications'], true),
      );

  Map<String, Object?> toJson() => <String, Object?>{
        'veg_mode': vegMode,
        'promotional_notifications': promotions,
      };

  AccountPreferences copyWith({bool? vegMode, bool? promotions}) =>
      AccountPreferences(
        vegMode: vegMode ?? this.vegMode,
        promotions: promotions ?? this.promotions,
      );

  @override
  bool operator ==(Object other) =>
      other is AccountPreferences &&
      other.vegMode == vegMode &&
      other.promotions == promotions;

  @override
  int get hashCode => Object.hash(vegMode, promotions);
}

/// One question on the help screen.
@immutable
class Faq {
  const Faq({required this.question, required this.answer});

  final String question;
  final String answer;
}

/// How to reach Nexmile, and the documents the app links to, as
/// `GET /v1/app/config`. Every field is optional: the screens show what is
/// there and leave out what is not.
@immutable
class SupportInfo {
  const SupportInfo({
    this.phone,
    this.whatsapp,
    this.email,
    this.safetyPhone,
    this.hours,
    this.termsUrl,
    this.privacyUrl,
    this.faqs = const <Faq>[],
  });

  final String? phone;

  /// A number in international form without "+", for a wa.me link.
  final String? whatsapp;
  final String? email;

  /// Answered at all hours, for the safety page.
  final String? safetyPhone;

  /// When the support line is answered, worded by the server: "9 am – 11 pm".
  final String? hours;

  final String? termsUrl;
  final String? privacyUrl;
  final List<Faq> faqs;

  bool get hasContact => phone != null || whatsapp != null || email != null;

  static SupportInfo fromJson(Map<String, dynamic> json) => SupportInfo(
        phone: _text(json['support_phone']),
        whatsapp: _text(json['support_whatsapp']),
        email: _text(json['support_email']),
        safetyPhone: _text(json['safety_phone']),
        hours: _text(json['support_hours']),
        termsUrl: _text(json['terms_url']),
        privacyUrl: _text(json['privacy_url']),
        faqs: <Faq>[
          for (final Map<String, dynamic> faq in asMapList(json['faqs']))
            if (_text(faq['question']) != null && _text(faq['answer']) != null)
              Faq(question: _text(faq['question'])!, answer: _text(faq['answer'])!),
        ],
      );

  static String? _text(Object? raw) {
    final String text = asString(raw).trim();
    return text.isEmpty ? null : text;
  }
}

enum CouponKind { flat, percent }

/// A coupon the customer can use, as `GET /v1/coupons`.
@immutable
class Coupon {
  const Coupon({
    required this.id,
    required this.code,
    required this.title,
    required this.kind,
    required this.value,
    this.description,
    this.maxDiscount,
    this.minOrderValue,
    this.validUntil,
    this.restaurantName,
    this.terms = const <String>[],
  });

  final String id;
  final String code;
  final String title;
  final CouponKind kind;

  /// Rupees off for [CouponKind.flat], a percentage for [CouponKind.percent].
  final double value;
  final String? description;

  /// The most a percentage coupon takes off.
  final double? maxDiscount;
  final double? minOrderValue;
  final DateTime? validUntil;

  /// Null when it works at every restaurant.
  final String? restaurantName;
  final List<String> terms;

  static Coupon fromJson(Map<String, dynamic> json) {
    final Object? restaurant = json['restaurant'];
    return Coupon(
      id: asString(json['id']),
      code: asString(json['code']).trim(),
      title: asString(json['title']).trim(),
      kind: asString(json['discount_type']) == 'percent'
          ? CouponKind.percent
          : CouponKind.flat,
      value: asDouble(json['discount_value']),
      description: SupportInfo._text(json['description']),
      maxDiscount:
          json['max_discount'] == null ? null : asDouble(json['max_discount']),
      minOrderValue: json['min_order_value'] == null
          ? null
          : asDouble(json['min_order_value']),
      validUntil: asDate(json['valid_until']),
      restaurantName: restaurant is Map ? SupportInfo._text(restaurant['name']) : null,
      terms: <String>[
        if (json['terms'] is List)
          for (final Object? term in json['terms'] as List<Object?>)
            if (SupportInfo._text(term) != null) SupportInfo._text(term)!,
      ],
    );
  }
}
