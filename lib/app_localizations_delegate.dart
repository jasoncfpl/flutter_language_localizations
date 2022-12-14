import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_language_localizations/dl_storage.dart';

import 'app_localizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async{
    log("load:${locale.languageCode}");
    Map<String,dynamic>? map;
    if (locale.languageCode == "en") {
      map = await DLStorage.loadFile();
    }
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale,map));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}