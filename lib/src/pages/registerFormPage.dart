import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/catagoryProjectsPages.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterFormPage extends StatefulWidget {
  @override
  _RegisterFormPageState createState() => _RegisterFormPageState();
}

class _RegisterFormPageState extends State<RegisterFormPage> {
  bool value = false;

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
                  height: 30,
                ),
                KText(
                  text: 'register',
                  color: AppTheme.textColor,
                  fontSize: 17,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: 'registerFormAbout',
                  fontSize: 13,
                  fontWeight: AppTheme.regular,
                  color: AppTheme.textColor2,
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/user1.png',
                      width: 14,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    KText(
                      text: 'fullName',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
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
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'FormFieldFullName'.tr,
                      hintStyle: TextStyle(
                        fontSize: 12,
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
                      'assets/icon/user1.png',
                      width: 14,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    KText(
                      text: 'userName',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
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
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'userNameField'.tr,
                      hintStyle: TextStyle(
                        fontSize: 12,
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
                      width: 14,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    KText(
                      text: 'password',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
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
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: '**********',
                      hintStyle: TextStyle(
                        letterSpacing: 6,
                        fontSize: 13,
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    checkBox(),
                    SizedBox(width: 10),
                    KText(
                      text: 'iAccept',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textColor,
                      fontFamily: 'Poppins Regular',
                    ),
                    SizedBox(width: 5),
                    KText(
                      text: 'terms&Conditions',
                      fontWeight: AppTheme.regular,
                      fontSize: 13,
                      fontFamily: 'Poppins Regular',
                      color: AppTheme.iconColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 110,
                ),
                GestureDetector(
                  onTap: () => Get.to(CatagoryProjectsPage()),
                  child: Container(
                    height: 50,
                    width: double.infinity,
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
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
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

  Widget checkBox() => Container(
        height: 21,
        width: 21,
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
            }),
      );
}
