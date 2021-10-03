import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/bottomBarHome.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:board_ui/src/widgets/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool value = false;

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
                  height: 20,
                ),
                backButton(),
                SizedBox(
                  height: 20,
                ),
                KText(
                  text: 'login',
                  color: AppTheme.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: AppTheme.textSize20,
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: 'loginAbout',
                  fontSize: AppTheme.textSize13,
                  color: AppTheme.textColor2,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 80,
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
                      fontWeight: FontWeight.bold,
                      fontSize: AppTheme.textSize13,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 55,
                  width: Get.width,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'textFieldEmail'.tr,
                      hintStyle: TextStyle(
                        fontSize: AppTheme.textSize13,
                        color: AppTheme.textColor2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/lock.png',
                      width: AppTheme.textSize14,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    KText(
                      text: 'password',
                      fontWeight: FontWeight.bold,

                      fontSize: AppTheme.textSize13,
                      // fontFamily: AppTheme.medium,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: AppTheme.height55,
                  width: AppTheme.widthMax,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: 'textFieldPassword'.tr,
                      hintStyle: TextStyle(
                        letterSpacing: 6,
                        fontSize: AppTheme.textSize13,
                        color: AppTheme.textColor2,
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/icon/eye.png',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    checkBox(),
                    SizedBox(width: 15),
                    KText(
                      text: 'rememberMe',
                      fontSize: AppTheme.textSize13,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.textColor2,
                    ),
                    Spacer(),
                    KText(
                      text: 'forgetPassword',
                      color: AppTheme.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: AppTheme.textSize14,
                    ),
                  ],
                ),
                SizedBox(
                  height: 240,
                ),
                primaryButtonWithImg(
                  'login',
                  () => Get.to(
                    BottomBarHome(),
                  ),
                  'assets/icon/login.png',
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

  Widget checkBox() => Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: HexColor('#F9F9F9'),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Checkbox(
          fillColor: MaterialStateProperty.all(Colors.transparent),
          checkColor: AppTheme.iconColor,
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value!;
            });
          },
        ),
      );
}
