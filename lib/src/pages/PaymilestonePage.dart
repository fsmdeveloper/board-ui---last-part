import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/addNewCardPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groovin_widgets/groovin_widgets.dart';

class PayMileStonePage extends StatefulWidget {
  const PayMileStonePage({Key? key}) : super(key: key);

  @override
  _PayMileStonePageState createState() => _PayMileStonePageState();
}

class _PayMileStonePageState extends State<PayMileStonePage> {
  var value;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            EvaIcons.arrowIosBack,
                            size: 26,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        KText(
                          text: 'Pay Later',
                          fontSize: 13,
                          fontFamily: 'Poppins Semi Bold',
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 1.50,
                          width: 60,
                          color: Colors.grey.shade300,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                KText(
                  text: 'Create Milestones',
                  color: AppTheme.textColor,
                  fontSize: 21,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: '''Start creating milestones for your project to be
able to work with suitable freelancer ''',
                  fontFamily: 'Poppins Medium',
                  fontSize: 13,
                  color: AppTheme.textColor2,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  clipBehavior: Clip.none,
                  height: 7,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 7,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: AppTheme.iconColor.withOpacity(.70),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                KText(
                  text: 'Project Budget',
                  color: AppTheme.textColor,
                  fontSize: 13,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: Get.width,
                  child: OutlineDropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '10,000 ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppTheme.textColor,
                                  fontFamily: 'Poppins Semi Bold',
                                ),
                                children: [
                                  TextSpan(
                                    text: 'SAR ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppTheme.textColor2,
                                      fontFamily: 'Poppins Semi Bold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            KText(
                              text: '~',
                              color: AppTheme.iconColor,
                              fontSize: 16,
                            ),
                            RichText(
                              text: TextSpan(
                                text: ' 15,000 ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppTheme.textColor,
                                  fontFamily: 'Poppins Semi Bold',
                                ),
                                children: [
                                  TextSpan(
                                    text: 'SAR',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppTheme.textColor2,
                                      fontFamily: 'Poppins Semi Bold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        value: 'none',
                      ),
                    ],
                    isExpanded: true,
                    hint: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: '10,000 ',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.textColor,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            children: [
                              TextSpan(
                                text: 'SAR ',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppTheme.textColor2,
                                  fontFamily: 'Poppins Semi Bold',
                                ),
                              ),
                            ],
                          ),
                        ),
                        KText(
                          text: '~',
                          color: AppTheme.iconColor,
                          fontSize: 16,
                        ),
                        RichText(
                          text: TextSpan(
                            text: ' 15,000 ',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.textColor,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            children: [
                              TextSpan(
                                text: 'SAR',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppTheme.textColor2,
                                  fontFamily: 'Poppins Semi Bold',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.expand_more,
                          size: 22,
                        )
                      ],
                    ),
                    iconSize: 0,
                    value: value,
                    onChanged: (value) => print(value),
                  ),
                ),
                SizedBox(height: 30),
                KText(
                  text: 'Pay using',
                  color: HexColor('#474461'),
                  fontSize: 15,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Image.asset(
                    'assets/icon/visa.png',
                    width: 25,
                  ),
                  title: KText(
                    text: 'Online Payments',
                    fontFamily: 'Poppins Medium',
                    fontSize: 13,
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: HexColor('#C63878'),
                    radius: 11,
                    child: Center(
                      child: Icon(
                        Icons.done,
                        color: AppTheme.white,
                        size: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Get.to(AddNewCardPages()),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add,
                          color: AppTheme.textColor2,
                          size: 20,
                        ),
                        KText(
                          text: 'Add New Card',
                          fontFamily: 'Poppins Semi Bold',
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 60,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppTheme.iconColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/icon/visa1.png',
                              width: 30,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        circleAvatar(),
                        circleAvatar(),
                        circleAvatar(),
                        circleAvatar(),
                        SizedBox(width: 15),
                        circleAvatar(),
                        circleAvatar(),
                        circleAvatar(),
                        circleAvatar(),
                        SizedBox(width: 15),
                        circleAvatar(),
                        circleAvatar(),
                        circleAvatar(),
                        circleAvatar(),
                        SizedBox(width: 15),
                        KText(
                          text: '123',
                          fontSize: 12.50,
                          fontFamily: 'Poppins Semi Bold',
                          color: AppTheme.white,
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: AppTheme.white,
                          radius: 11,
                          child: Center(
                            child: Icon(
                              Icons.done,
                              color: HexColor('#C63878'),
                              size: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Image.asset(
                    'assets/icon/cash.png',
                    width: 25,
                  ),
                  title: KText(
                    text: 'Pay using wallet',
                    fontFamily: 'Poppins Medium',
                    fontSize: 13,
                  ),
                  trailing: RichText(
                    text: TextSpan(
                      text: ' 10,000 ',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppTheme.textColor,
                        fontFamily: 'Poppins Medium',
                      ),
                      children: [
                        TextSpan(
                          text: 'SAR',
                          style: TextStyle(
                            fontSize: 11,
                            color: AppTheme.textColor2,
                            fontFamily: 'Poppins Semi Bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: () => Get.back(),
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
                        text: 'Pay & Continue',
                        fontFamily: 'Poppins Semi Bold',
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget circleAvatar() {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: CircleAvatar(
        backgroundColor: AppTheme.white,
        radius: 2.80,
      ),
    );
  }
}
