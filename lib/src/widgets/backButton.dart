import 'package:board_ui/src/configs/appTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget backButton() {
  return Container(
    height: 35,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: AppTheme.textColor2.withOpacity(.05),
    ),
    child: IconButton(
      onPressed: () => Get.back(),
      icon: Padding(
        padding: EdgeInsets.only(left: 2),
        child: Icon(
          Icons.arrow_back_ios,
          size: 16,
        ),
      ),
    ),
  );
}
