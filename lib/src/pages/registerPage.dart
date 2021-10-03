import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/OtpPage.dart';
import 'package:board_ui/src/pages/loginPage.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                backButton(),
                SizedBox(
                  height: 20,
                ),
                KText(
                  text: 'register',
                  color: AppTheme.textColor,
                  fontSize: AppTheme.textSize17,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: 'registerFormAbout',
                  fontSize: 12.50,
                  color: AppTheme.textColor2,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/email.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    KText(
                      text: 'emailAddress',
                      fontSize: 12.50,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: AppTheme.height50,
                  width: AppTheme.widthMax,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      hintText: 'textFieldEmail'.tr,
                      hintStyle: TextStyle(
                        fontSize: AppTheme.textSize13,
                        // fontFamily: 'Poppins Medium',
                        color: AppTheme.textColor2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 320,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    KText(
                      text: 'alreadyHaveAnaccount',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.textColor2,
                    ),
                    SizedBox(width: 2),
                    GestureDetector(
                      onTap: () => Get.to(LoginPage()),
                      child: KText(
                        text: 'login',
                        fontSize: 13.50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () => Get.to(OtpPage()),
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: KText(
                            text: 'registerAccount',
                            color: AppTheme.white,
                            fontWeight: FontWeight.w700,
                            fontSize: AppTheme.textSize14,
                          ),
                        ),
                        Positioned(
                          right: 20,
                          child: Image.asset(
                            'assets/icon/user.png',
                            height: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
