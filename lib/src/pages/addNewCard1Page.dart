import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/projectSuccessPage.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/cardNumberValidation.dart';
import 'package:board_ui/src/widgets/dateValidation.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AddNewCard1Pages extends StatefulWidget {
  const AddNewCard1Pages({Key? key}) : super(key: key);

  @override
  _AddNewCard1PagesState createState() => _AddNewCard1PagesState();
}

class _AddNewCard1PagesState extends State<AddNewCard1Pages> {
  bool value = false;

  //

  final creditColor = HexColor('#4A4670').withOpacity(.80);
// credit card icon & textColor
  ///

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                backButton(),
                SizedBox(height: 30),
                KText(
                  text: 'addNewCard',
                  fontFamily: 'Poppins Semi Bold',
                  fontSize: AppTheme.textSize19,
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/credit_card.png',
                      width: 16,
                      color: creditColor,
                    ),
                    SizedBox(width: 10),
                    KText(
                      text: 'cardNumber',
                      color: creditColor,
                      fontWeight: AppTheme.medium,
                      fontSize: 13,
                    )
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CardNumberFormatter(),
                  ],
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.cairo(
                    fontWeight: AppTheme.medium,
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    hintText: 'XXXX      XXXX      XXXX      XXXX',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: AppTheme.textColor2,
                    ),
                    counterText: '',
                  ),
                  maxLength: 31,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/user3.png',
                      width: 15,
                      color: creditColor,
                    ),
                    SizedBox(width: 10),
                    KText(
                      text: 'cardHolder',
                      color: creditColor,
                      fontSize: 13,
                      fontWeight: AppTheme.medium,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    hintText: 'cardHolderNameField'.tr,
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: AppTheme.textColor2,
                      fontWeight: AppTheme.medium,
                    ),
                    counterText: '',
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/icon/calender.png',
                                        width: 16,
                                        color: creditColor,
                                      ),
                                      SizedBox(width: 10),
                                      KText(
                                        text: 'expiryDate',
                                        color: creditColor,
                                        fontSize: 13,
                                        fontWeight: AppTheme.medium,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    style: GoogleFonts.cairo(
                                      fontSize: 14,
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      DateFormatter(),
                                    ],
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.datetime,
                                    decoration: InputDecoration(
                                      hintText: 'expiryDateField'.tr,
                                      hintStyle: TextStyle(
                                        fontSize: 11,
                                        color: AppTheme.textColor2,
                                        fontWeight: AppTheme.medium,
                                      ),
                                      counterText: '',
                                    ),
                                    maxLength: 8,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon/lock1.png',
                                        width: 12,
                                        color: creditColor,
                                      ),
                                      SizedBox(width: 10),
                                      KText(
                                        text: 'cvc',
                                        color: creditColor,
                                        fontSize: 13,
                                        fontWeight: AppTheme.medium,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    style: GoogleFonts.cairo(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.number,
                                    // obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: 'cvcField'.tr,
                                      hintStyle: TextStyle(
                                        fontSize: 11,
                                        color: AppTheme.textColor2,
                                        fontWeight: AppTheme.medium,
                                      ),
                                      counterText: '',
                                    ),
                                    maxLength: 3,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                      text: 'saveThisFutureUse',
                      fontSize: AppTheme.textSize14,
                      fontWeight: AppTheme.regular,
                      color: AppTheme.textColor,
                    ),
                  ],
                ),
                SizedBox(height: 160),
                GestureDetector(
                  onTap: () => Get.to(ProjectSuccessPage()),
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: KText(
                        text: 'addNewCard',
                        color: Colors.white,
                        fontSize: AppTheme.textSize14,
                        fontWeight: AppTheme.semi,
                      ),
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
