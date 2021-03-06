import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/bottomBarHome.dart';
import 'package:board_ui/src/pages/loginWithPage.dart';
import 'package:board_ui/src/pages/registerWithPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:board_ui/src/widgets/languageWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
                  onPressed: () => Get.to(LanguagesWidget()),
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
                onTap: () => Get.to(BottomBarHome()),
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
                      text: 'dontHaveId',
                      fontSize: AppTheme.textSize13,
                      color: AppTheme.textColor2,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(
                        RegisterWithPage(),
                      ),
                      child: KText(
                        text: 'signUp',
                        color: AppTheme.textColor,
                        fontSize: AppTheme.textSize13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () => Get.to(LoginWithPage()),
                child: Padding(
                  padding: AppTheme.paddingH30,
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
                          text: 'login',
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
            ],
          ),
        ),
      ),
    );
  }
}
