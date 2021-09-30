import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/loginWithPage.dart';
import 'package:board_ui/src/pages/projectPage.dart';

import 'package:board_ui/src/pages/registerWithPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:board_ui/src/widgets/selectLanguageDialouge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => showDialouge(context),
                  icon: Icon(
                    Icons.language,
                    color: AppTheme.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () => Get.to(RegisterWithPage()),
                child: Image.asset(
                  'assets/img/logo.png',
                  width: 330,
                ),
              ),
              SizedBox(height: 200),
              Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    KText(
                      text: 'dontHaveId'.tr,
                      fontSize: AppTheme.textSize13,
                      color: AppTheme.textColor2,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(
                        RegisterWithPage(),
                      ),
                      child: KText(
                        text: 'signUp'.tr,
                        color: AppTheme.textColor,
                        fontSize: AppTheme.textSize13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: GestureDetector(
          onTap: () => Get.to(LoginWithPage()),
          child: Padding(
            padding: AppTheme.paddingH30,
            child: Padding(
              padding: EdgeInsets.only(bottom: 40),
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
                      text: 'login'.tr,
                      color: Colors.white,
                      fontSize: AppTheme.textSize14,
                      fontWeight: FontWeight.bold,
                    ),
                    Positioned(
                      right: 20,
                      child: Image.asset(
                        'assets/icon/login.png',
                        height: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
