import 'package:board_ui/src/hiveModels/lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class LangController extends GetxController {
  final selectedLang = Rx<Locale>(Locale('en', 'US'));

  final langBox = Hive.box<Lang>('lang');

  changeLang(Locale locale) async {
    Get.updateLocale(locale);
    selectedLang.value = locale;
    final lang = Lang(
        languageCode: locale.languageCode, countryCode: locale.countryCode);

    await langBox.put('lang', lang);
  }

  Locale getDefatultLang() {
    final defatultLang = langBox.get('lang');
    if (defatultLang != null) {
      final langData =
          Locale('${defatultLang.languageCode}', '${defatultLang.countryCode}');

      selectedLang.value = langData;
      return langData;
    } else {
      return selectedLang.value;
    }
  }

  checkLang(Locale locale) {
    if (locale == selectedLang.value) {
      return true;
    } else {
      return false;
    }
  }
}
