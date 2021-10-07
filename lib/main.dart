import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/services/hiveService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'src/app.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: AppTheme.white,
      systemNavigationBarColor: AppTheme.white,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Get.put(HiveService()).initHive();
  runApp(App());
}
