import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/registerFormPage.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:board_ui/src/widgets/otpFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

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
                SizedBox(
                  height: 20,
                ),
                backButton(),
                SizedBox(
                  height: 30,
                ),
                KText(
                  text: 'otpVerfication',
                  color: HexColor('#323643'),
                  fontSize: AppTheme.textSize17,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: 'enter4DigitAbout',
                  fontSize: AppTheme.textSize13,
                  fontWeight: AppTheme.regular,
                  color: AppTheme.textColor2,
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: TextFormField(
                          autofocus: true,
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin2FocusNode);
                          },
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          showCursor: false,
                          decoration: otpFields,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: TextFormField(
                          autofocus: true,
                          focusNode: pin2FocusNode,
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin3FocusNode);
                          },
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          showCursor: false,
                          decoration: otpFields,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: TextFormField(
                          autofocus: true,
                          focusNode: pin3FocusNode,
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin4FocusNode);
                          },
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          showCursor: false,
                          decoration: otpFields,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: TextFormField(
                          autofocus: true,
                          focusNode: pin4FocusNode,
                          onChanged: (value) {
                            pin4FocusNode.unfocus();
                          },
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          showCursor: false,
                          decoration: otpFields,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 330,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    KText(
                      text: 'dontReceiveCode',
                      fontSize: 12.50,
                      color: AppTheme.textColor2,
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {},
                      child: KText(
                        text: 'resend',
                        fontSize: AppTheme.textSize13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () => Get.to(RegisterFormPage()),
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
                            text: 'confirmOtp',
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: AppTheme.textSize14,
                          ),
                        ),
                        Positioned(
                          right: 20,
                          child: Icon(
                            Icons.done,
                            color: AppTheme.white,
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
