import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/addNewCardPage.dart';
import 'package:board_ui/src/pages/milestoreSuccessPage.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:board_ui/src/widgets/primaryButton.dart';

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
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    backButton(),
                    Spacer(),
                    Column(
                      children: [
                        KText(
                          text: 'payLater',
                          fontSize: 12,
                          fontFamily: 'Poppins Semi Bold',
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 1.50,
                          width: 55,
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
                  text: 'createMileStone',
                  color: AppTheme.textColor,
                  fontSize: AppTheme.textSize19,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: 'createMilestoneAbout',
                  fontWeight: AppTheme.regular,
                  fontSize: AppTheme.textSize13,
                  color: AppTheme.textColor2,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  clipBehavior: Clip.none,
                  height: 6,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 6,
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
                  text: 'projectBudget',
                  color: AppTheme.textColor,
                  fontWeight: AppTheme.medium,
                  fontSize: AppTheme.textSize13,
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
                                  fontWeight: AppTheme.medium,
                                  color: AppTheme.textColor,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'sar'.tr,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppTheme.textColor2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            KText(
                              text: ' ~',
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
                                    text: 'sar'.tr,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppTheme.textColor2,
                                      fontWeight: AppTheme.medium,
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
                                text: 'sar'.tr,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppTheme.textColor2,
                                  fontWeight: AppTheme.medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        KText(
                          text: ' ~',
                          color: AppTheme.iconColor,
                          fontSize: 16,
                        ),
                        RichText(
                          text: TextSpan(
                            text: ' 15,000 ',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.textColor,
                              fontWeight: AppTheme.semi,
                            ),
                            children: [
                              TextSpan(
                                text: 'sar'.tr,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppTheme.textColor2,
                                  fontWeight: AppTheme.medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.expand_more,
                          size: 20,
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
                  text: 'payUsing',
                  color: HexColor('#474461'),
                  fontSize: 15,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(height: 20),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.textColor2.withOpacity(.10),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icon/visa.png',
                      width: 25,
                    ),
                    title: KText(
                      text: 'onlinePayments',
                      fontFamily: 'Poppins Medium',
                      fontSize: 13,
                      fontWeight: AppTheme.regular,
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
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Get.to(AddNewCardPages()),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppTheme.textColor2.withOpacity(.10),
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add,
                            color: AppTheme.textColor2,
                            size: 20,
                          ),
                          KText(
                            text: 'addNewCard',
                            fontFamily: 'Poppins Semi Bold',
                            color: Colors.black54,
                            fontSize: 13,
                          ),
                          Container(),
                        ],
                      ),
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
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.textColor2.withOpacity(.10),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icon/cash.png',
                      width: 25,
                    ),
                    title: KText(
                      text: 'payUsingWallet',
                      fontWeight: AppTheme.regular,
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
                            text: 'sar'.tr,
                            style: TextStyle(
                              fontSize: 11,
                              color: AppTheme.textColor2,
                              fontWeight: AppTheme.medium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                primaryButton(
                  'pay&Continue',
                  () => Get.to(MilestoneSuccessPage()),
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
