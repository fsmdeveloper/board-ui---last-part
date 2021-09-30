import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/loginPage.dart';
import 'package:board_ui/src/pages/registerPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterWithPage extends StatelessWidget {
  const RegisterWithPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Image.asset(
                      'assets/icon/back.png',
                      scale: 3,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                KText(
                  text: 'register',
                  color: HexColor('#323643'),
                  fontSize: 17,
                  // fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: 'registerAbout',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  // fontFamily: 'Poppins Medium',
                  color: HexColor('#BCBCBC'),
                ),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    FontAwesomeIcons.facebookF,
                    size: 20,
                    color: HexColor('#F7D107'),
                  ),
                  title: KText(
                    text: 'signupUsingFacebook',
                    fontWeight: FontWeight.w500,

                    // fontFamily: 'Poppins Medium',
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    FontAwesomeIcons.google,
                    size: 20,
                    color: HexColor('#F7D107'),
                  ),
                  title: KText(
                    text: 'signupUsingGoogle',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    fontFamily: 'Poppins Medium',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    FontAwesomeIcons.apple,
                    size: 24,
                    color: HexColor('#F7D107'),
                  ),
                  title: KText(
                    text: 'signupUsingApple',
                    // fontFamily: AppTheme.mediumAr,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                ListTile(
                  onTap: () => Get.to(RegisterPage()),
                  leading: Image.asset(
                    'assets/icon/gmail.png',
                    width: 33,
                    // color: HexColor('#F7D107'),
                  ),
                  title: KText(
                    text: 'signupUsingEmail',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
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
                      text: 'alreadyHaveAnaccount',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.textColor2,
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () => Get.to(LoginPage()),
                      child: KText(
                        text: 'login',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
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
}
