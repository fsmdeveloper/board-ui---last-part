import 'package:board_ui/src/configs/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: AppTheme.white,
      systemNavigationBarColor: AppTheme.white,
    ),
  );
  runApp(App());
}
