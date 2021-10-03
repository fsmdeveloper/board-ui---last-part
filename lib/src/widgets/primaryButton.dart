import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/bottomBarHome.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget primaryButton(
  String title,
  void Function()? onTap,
) {
  return GestureDetector(
    onTap: () => Get.to(BottomBarHome()),
    child: Container(
      height: AppTheme.height50,
      width: AppTheme.widthMax,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: AppTheme.circular10,
      ),
      child: Center(
        child: KText(
          text: title.tr,
          color: Colors.white,
          fontSize: AppTheme.textSize14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget primaryButtonWithImg(
  String title,
  void Function()? onTap,
  String image,
) {
  return GestureDetector(
    onTap: () => Get.to(BottomBarHome()),
    child: Container(
      height: AppTheme.height50,
      width: AppTheme.widthMax,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: AppTheme.circular10,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          KText(
            text: title.tr,
            color: Colors.white,
            fontSize: AppTheme.textSize14,
            fontWeight: FontWeight.bold,
          ),
          Positioned(
            right: 20,
            child: Image.asset(
              image,
              height: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
