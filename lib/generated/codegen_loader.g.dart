// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> _en = {
    "hello": "Hello!",
    "welcome": "Welcome to our app.",
    "comingsoon": "Get ready for premium access - Pro version coming soon!",
  };
  static const Map<String, dynamic> _ur = {
    "hello": "ہیلو!",
    "welcome": "ہماری ایپ میں خوش آمدید۔",
    "comingsoon": "پریمیم رسائی کے لیے تیار ہو جائیں - پرو ورژن جلد آ رہا ہے!",
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "en": _en,
    "ur": _ur,
  };
}
