import 'dart:ui';

import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/loginWithPage.dart';
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
  //
  bool value = false;

  //

  final creditColor = HexColor('#4A4670').withOpacity(.80);
// credit card icon & textColor
  ///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 45),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
          ),
        ),
      ),
      // resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              KText(
                text: 'Add New Card',
                fontFamily: 'Poppins Semi Bold',
                fontSize: 21,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Image.asset(
                    'assets/icon/credit_card.png',
                    width: 16,
                    color: creditColor,
                  ),
                  SizedBox(width: 10),
                  KText(
                    text: 'Card Number',
                    color: creditColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
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
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  hintText: 'XXXX      XXXX      XXXX      XXXX',
                  hintStyle: TextStyle(
                    fontSize: 14,
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
                    text: 'Card Holder Name',
                    color: creditColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
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
                  hintText: 'Card Holder Name',
                  hintStyle: TextStyle(
                    fontSize: 14,
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/icon/calender.png',
                                      width: 16,
                                      color: creditColor,
                                    ),
                                    SizedBox(width: 10),
                                    KText(
                                      text: 'Expiry Date',
                                      color: creditColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
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
                                    hintText: 'DD/MM/YY',
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'poppins Regular',
                                    ),
                                    counterText: '',
                                  ),
                                  maxLength: 8,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/icon/lock1.png',
                                      width: 12,
                                      color: creditColor,
                                    ),
                                    SizedBox(width: 10),
                                    KText(
                                      text: 'CVC',
                                      color: creditColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
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
                                    hintText: 'CVV Number',
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'poppins Regular',
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
                    text: 'Save this card for future use',
                    fontSize: 16,
                  ),
                ],
              ),
              SizedBox(height: 200),
              GestureDetector(
                onTap: () => Get.to(LoginWithPage()),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: HexColor('#41d9c6'),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: KText(
                      text: 'Add New Card',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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
