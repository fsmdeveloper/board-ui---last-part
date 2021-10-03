import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/loginPage.dart';
import 'package:board_ui/src/pages/registerWithPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginWithPage extends StatelessWidget {
  const LoginWithPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: AppTheme.paddingH40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                KText(
                  text: 'login'.tr,
                  color: AppTheme.textColor,
                  fontSize: AppTheme.textSize20,
                  // fontFamily: AppTheme.bold,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: 'loginWithAbout'.tr,
                  fontSize: AppTheme.textSize13,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textColor2,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.textColor2.withOpacity(.10),
                  ),
                  child: listtile(
                      () {}, FontAwesomeIcons.facebookF, 'loginWithFacebook'),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.textColor2.withOpacity(.10),
                    ),
                    child: listtile(
                        () {}, FontAwesomeIcons.google, 'loginWithGoogle')),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.textColor2.withOpacity(.10),
                    ),
                    child: listtile(
                        () {}, FontAwesomeIcons.apple, 'loginWithApple')),
                SizedBox(
                  height: 200,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.textColor2.withOpacity(.10),
                  ),
                  child: ListTile(
                    onTap: () => Get.to(LoginPage()),
                    leading: Image.asset(
                      'assets/icon/gmail.png',
                      width: 33,
                    ),
                    title: KText(
                      text: 'loginWithEmail'.tr,
                      fontSize: AppTheme.textSize13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    KText(
                      text: 'dontHaveId'.tr,
                      fontSize: AppTheme.textSize13,
                      color: AppTheme.textColor2,
                      fontWeight: FontWeight.w500,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(RegisterWithPage()),
                      child: KText(
                        text: 'signUp'.tr,
                        fontSize: AppTheme.textSize13,
                        // fontFamily: AppTheme.semi,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listtile(
    void Function()? onTap,
    IconData icon,
    String name,
  ) {
    return Center(
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          icon,
          size: 20,
          color: AppTheme.iconColor,
        ),
        title: KText(
          text: name,
          fontSize: AppTheme.textSize13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
