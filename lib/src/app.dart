import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/controllers/langController.dart';
import 'package:board_ui/src/localization/translations.dart';
import 'package:board_ui/src/pages/splashPage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class App extends StatelessWidget {
  final langController = Get.put(LangController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      smartManagement: SmartManagement.onlyBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Getx Localization',
      translations: Translation(),
      theme: AppTheme.appTheme,
      locale: langController.getDefatultLang(),
      fallbackLocale: Locale('en', 'US'),
      home: SplashPage(),
    );
  }
}
