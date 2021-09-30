import 'package:board_ui/src/Translations/translations.dart';
import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/splashPage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Translation(),
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.onlyBuilder,
      theme: AppTheme.appTheme,
      home: SplashPage(),
    );
  }
}
