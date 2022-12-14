import 'dart:developer';

import 'package:flutter/material.dart';


class AppLocalizations {

  final Locale locale;
  final Map<String, dynamic>? map;

  AppLocalizations(this.locale,this.map) {
    if (map != null) {
      _localizedValues['en'] = map!;
    }
  }


  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static final Map<String, Map<String, dynamic>> _localizedValues = {
    'en': {
      'title': 'hello world',
    },
    'zh': {
      'title': '你好',
    },
  };

  String? get title {
    log("locale.languageCode:${locale.languageCode}");
    return _localizedValues[locale.languageCode]?['title'].toString() ?? "";
  }
}