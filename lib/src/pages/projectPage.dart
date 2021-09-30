import 'dart:ui';

import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/placeingBidPage.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: AppTheme.paddingHV40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                backButton(),
                SizedBox(height: 15),
                Row(
                  children: [
                    KText(
                      text: 'open',
                      color: AppTheme.iconColor,
                      fontWeight: FontWeight.w500,
                      fontSize: AppTheme.textSize11,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 2,
                    ),
                    SizedBox(width: 8),
                    KText(
                      text: 'withIn4days',
                      color: AppTheme.textColor2,
                      fontWeight: FontWeight.w500,
                      fontSize: AppTheme.textSize11,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                KText(
                  text: 'designAschoolBrochure',
                  fontSize: AppTheme.textSize19,
                  fontFamily: AppTheme.semi,
                ),
                SizedBox(height: 15),
                KText(
                  text: 'projectPageAbout',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.grey,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon/pdf.png',
                          width: 25,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(
                              text: 'projectFilePdf',
                              fontFamily: AppTheme.medium,
                              fontSize: AppTheme.textSize12,
                            ),
                            KText(
                              text: 'projectCreateDate',
                              color: AppTheme.grey,
                              fontFamily: AppTheme.medium,
                              fontSize: AppTheme.textSize10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/img/bid-img-2.jpg',
                            width: 30,
                          ),
                        ),
                        SizedBox(width: 6),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(
                              text: 'muhammed',
                              fontFamily: AppTheme.medium,
                              fontSize: AppTheme.textSize12,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 14,
                                ),
                                SizedBox(width: 2),
                                KText(
                                  text: '4.5',
                                  fontFamily: AppTheme.medium,
                                  fontSize: AppTheme.textSize10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'projectBudget',
                  fontSize: AppTheme.textSize14,
                  fontFamily: AppTheme.medium,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '10,000 ',
                        style: TextStyle(
                          fontSize: AppTheme.textSize15,
                          color: AppTheme.textColor,
                          fontFamily: AppTheme.semiAr,
                        ),
                        children: [
                          TextSpan(
                            text: 'sar'.tr,
                            style: TextStyle(
                              fontSize: AppTheme.textSize12,
                              color: AppTheme.textColor2,
                              fontFamily: AppTheme.semiAr,
                            ),
                          ),
                        ],
                      ),
                    ),
                    KText(
                      text: '  ~',
                      color: AppTheme.iconColor,
                      fontSize: AppTheme.textSize17,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '  15,000 ',
                        style: TextStyle(
                          fontSize: AppTheme.textSize15,
                          color: AppTheme.textColor,
                          fontFamily: AppTheme.semiAr,
                        ),
                        children: [
                          TextSpan(
                            text: 'sar'.tr,
                            style: TextStyle(
                              fontSize: AppTheme.textSize12,
                              color: AppTheme.textColor2,
                              fontFamily: AppTheme.semiAr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'avgBid',
                  fontSize: AppTheme.textSize14,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '11,240 ',
                        style: TextStyle(
                          fontSize: AppTheme.textSize17,
                          color: AppTheme.textColor,
                          fontFamily: AppTheme.semi,
                        ),
                        children: [
                          TextSpan(
                            text: 'sar'.tr,
                            style: TextStyle(
                              fontSize: AppTheme.textSize12,
                              color: AppTheme.textColor2,
                              fontFamily: AppTheme.semiAr,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/img/bid-img-1.jpg',
                              width: 25,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/img/bid-img-2.jpg',
                                width: 25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/img/bid-img-1.jpg',
                                width: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    RichText(
                      text: TextSpan(
                        text: '     60 ',
                        style: TextStyle(
                          fontSize: AppTheme.textSize11,
                          color: AppTheme.textColor,
                          fontFamily: AppTheme.semi,
                        ),
                        children: [
                          TextSpan(
                            text: 'bids'.tr,
                            style: TextStyle(
                              fontSize: AppTheme.textSize11,
                              color: AppTheme.textColor,
                              fontFamily: AppTheme.semiAr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'bids'.tr,
                        style: TextStyle(
                          fontSize: AppTheme.textSize14,
                          // fontWeight: FontWeight.bold,
                          color: AppTheme.textColor,
                          fontFamily: 'Cairo Bold',
                        ),
                        children: [
                          TextSpan(
                            text: ' (39)',
                            style: TextStyle(
                              fontSize: AppTheme.textSize12,
                              color: AppTheme.textColor,
                              fontFamily: AppTheme.semiAr,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    KText(
                      text: 'viewAll',
                      color: AppTheme.iconColor,
                      fontFamily: AppTheme.medium,
                      fontSize: AppTheme.textSize14,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppTheme.iconColor,
                      size: 12,
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 40),
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    'assets/img/bid-img-1.jpg',
                                    width: 35,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(width: 8),
                                            KText(
                                              text: 'khalidSaiedMorsy',
                                              fontFamily: AppTheme.medium,
                                              fontSize: AppTheme.textSize13,
                                            ),
                                            SizedBox(width: 10),
                                            CircleAvatar(
                                              radius: 9,
                                              backgroundColor:
                                                  AppTheme.primaryColor,
                                              child: Center(
                                                child: Image.asset(
                                                  'assets/icon/reload.png',
                                                  width: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(width: 5),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 14,
                                            ),
                                            SizedBox(width: 2),
                                            KText(
                                              text: '4.5',
                                              fontFamily: AppTheme.medium,
                                              fontSize: AppTheme.textSize11,
                                            ),
                                            SizedBox(width: 5),
                                            KText(
                                              text: '( 1200 ',
                                              color: AppTheme.textColor2,
                                              fontFamily: AppTheme.medium,
                                              fontSize: 11,
                                            ),
                                            KText(
                                              text: 'review',
                                              color: AppTheme.textColor2,
                                              fontFamily: AppTheme.medium,
                                              fontSize: AppTheme.textSize11,
                                            ),
                                            KText(
                                              text: ' )',
                                              color: AppTheme.textColor2,
                                              fontFamily: AppTheme.medium,
                                              fontSize: 8,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Get.width / 7),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: '11,240 ',
                                            style: TextStyle(
                                              fontSize: AppTheme.textSize17,
                                              color: AppTheme.textColor,
                                              fontFamily: AppTheme.semi,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'sar'.tr,
                                                style: TextStyle(
                                                  fontSize: AppTheme.textSize14,
                                                  color: AppTheme.textColor2,
                                                  fontFamily: AppTheme.semiAr,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: '4 ',
                                            style: TextStyle(
                                              fontSize: AppTheme.textSize10,
                                              color: AppTheme.textColor,
                                              fontFamily: AppTheme.semi,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'days'.tr,
                                                style: TextStyle(
                                                  fontSize: AppTheme.textSize11,
                                                  color: AppTheme.textColor,
                                                  fontFamily: AppTheme.semiAr,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            KText(
                              text: 'AboutGig',
                              fontSize: AppTheme.textSize11,
                              // fontFamily: AppTheme.medium,
                              fontWeight: FontWeight.w500,
                              color: AppTheme.grey,
                            ),
                            SizedBox(height: 30),
                          ],
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'requiredSkills',
                  fontSize: AppTheme.textSize14,
                  fontFamily: AppTheme.semi,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    KText(
                      text: 'photoshop',
                      fontSize: AppTheme.textSize12,
                      color: AppTheme.grey,
                      fontWeight: AppTheme.normal,
                      // fontFamily: AppTheme.medium,
                    ),
                    SizedBox(width: 20),
                    KText(
                      text: 'design',
                      fontSize: AppTheme.textSize12,
                      color: AppTheme.grey,
                      fontWeight: AppTheme.normal,
                      fontFamily: AppTheme.medium,
                    ),
                    SizedBox(width: 20),
                    KText(
                      text: 'socialMedia',
                      fontSize: AppTheme.textSize12,
                      color: AppTheme.grey,
                      fontWeight: AppTheme.normal,
                      fontFamily: AppTheme.medium,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'projectCode',
                  fontSize: AppTheme.textSize16,
                  fontFamily: AppTheme.semi,
                ),
                SizedBox(height: 10),
                KText(
                  text: '30446337',
                  fontSize: AppTheme.textSize12,
                  color: AppTheme.grey,
                  fontWeight: AppTheme.normal,
                  fontFamily: AppTheme.medium,
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () => Get.to(PlaceingBidPage()),
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
                        text: 'makeAbid',
                        color: Colors.white,
                        fontSize: AppTheme.textSize14,
                        fontFamily: AppTheme.semi,
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
}
