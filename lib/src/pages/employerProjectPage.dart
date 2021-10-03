import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/bidSuccessPage.dart';
import 'package:board_ui/src/pages/chatPage.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployerProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    backButton(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 5,
                        ),
                        child: Row(
                          children: [
                            KText(
                              text: 'edit',
                              fontWeight: AppTheme.medium,
                              fontSize: 12,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.edit,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    KText(
                      text: 'open',
                      color: AppTheme.iconColor,
                      fontWeight: AppTheme.medium,
                      fontSize: 12,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 2,
                    ),
                    SizedBox(width: 8),
                    KText(
                      text: 'endsWithIn4days',
                      color: AppTheme.textColor2,
                      fontWeight: AppTheme.regular,
                      fontSize: 11,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                KText(
                  text: 'designAschoolBrochure',
                  fontSize: 17,
                  fontWeight: AppTheme.bold,
                ),
                SizedBox(height: 15),
                KText(
                  text: 'employerHiredAbout',
                  fontSize: 12.50,
                  fontWeight: AppTheme.regular,
                  color: Colors.grey,
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
                              fontWeight: AppTheme.medium,
                              fontSize: 13,
                            ),
                            KText(
                              text: 'projectCreateDate',
                              color: Colors.grey,
                              fontWeight: AppTheme.medium,
                              fontSize: 10,
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
                              fontWeight: AppTheme.medium,
                              fontSize: 13,
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
                                  fontWeight: AppTheme.medium,
                                  fontSize: 11,
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
                Divider(color: Colors.grey.shade200),
                SizedBox(height: 10),
                KText(
                  text: 'projectBudget',
                  fontSize: 15,
                  fontWeight: AppTheme.medium,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '10,000 ',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppTheme.textColor,
                          fontWeight: AppTheme.medium,
                        ),
                        children: [
                          TextSpan(
                            text: 'sar'.tr,
                            style: TextStyle(
                              fontSize: 13,
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
                      fontSize: 17,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '  15,000 ',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppTheme.textColor,
                          fontWeight: AppTheme.medium,
                        ),
                        children: [
                          TextSpan(
                            text: 'sar'.tr,
                            style: TextStyle(
                              fontSize: 13,
                              color: AppTheme.textColor2,
                              fontWeight: AppTheme.medium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade200),
                SizedBox(height: 10),
                KText(
                  text: 'avgBid',
                  fontSize: 15,
                  fontWeight: AppTheme.medium,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '11,240 ',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppTheme.textColor,
                          fontWeight: AppTheme.semi,
                        ),
                        children: [
                          TextSpan(
                            text: 'sar'.tr,
                            style: TextStyle(
                              fontSize: 13,
                              color: AppTheme.textColor2,
                              fontWeight: AppTheme.medium,
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
                    SizedBox(width: 30),
                    KText(
                      text: '60 ',
                      fontWeight: AppTheme.regular,
                      fontSize: 13,
                    ),
                    KText(
                      text: 'bids',
                      fontWeight: AppTheme.regular,
                      fontSize: 13,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                Row(
                  children: [
                    KText(
                      text: 'bids',
                      fontWeight: AppTheme.medium,
                      fontSize: 16,
                    ),
                    KText(
                      text: ' (39)',
                      fontWeight: AppTheme.regular,
                      fontSize: 16,
                    ),
                    Spacer(),
                    KText(
                      text: 'viewAll',
                      color: AppTheme.iconColor,
                      fontWeight: AppTheme.medium,
                      fontSize: 14,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        'assets/img/bid-img-2.jpg',
                                        width: 35,
                                      ),
                                    ),
                                    SizedBox(width: 5),
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
                                              fontWeight: AppTheme.medium,
                                              fontSize: 13,
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
                                              fontWeight: AppTheme.medium,
                                              fontSize: 11,
                                            ),
                                            SizedBox(width: 5),
                                            KText(
                                              text: '( 1200 ',
                                              color: AppTheme.textColor2,
                                              fontWeight: AppTheme.medium,
                                              fontSize: 10,
                                            ),
                                            KText(
                                              text: 'review',
                                              color: AppTheme.textColor2,
                                              fontWeight: AppTheme.medium,
                                              fontSize: 10,
                                            ),
                                            KText(
                                              text: ' )',
                                              color: AppTheme.textColor2,
                                              fontWeight: AppTheme.medium,
                                              fontSize: 10,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    // SizedBox(width: 85),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: '11,240 ',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: AppTheme.textColor,
                                          fontFamily: 'Poppins Semi Bold',
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'sar'.tr,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppTheme.textColor2,
                                              fontWeight: AppTheme.medium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: '4 ',
                                        style: GoogleFonts.cairo(
                                          fontSize: AppTheme.textSize11,
                                          color: AppTheme.textColor,
                                          fontWeight: AppTheme.medium,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'days'.tr,
                                            style: GoogleFonts.cairo(
                                              fontSize: AppTheme.textSize10,
                                              color: AppTheme.textColor,
                                              fontWeight: AppTheme.regular,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50.withOpacity(.50),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                child: KText(
                                  text: 'employerHiredBidAbout'.tr,
                                  fontSize: 11.50,
                                  wordSpacing: 2,
                                  fontWeight: AppTheme.regular,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            GestureDetector(
                              onTap: () => Get.to(BidSuccessPage()),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      width: 282,
                                      decoration: BoxDecoration(
                                        color: AppTheme.iconColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.done,
                                              size: 22,
                                              color: AppTheme.white,
                                            ),
                                            SizedBox(width: 0),
                                            KText(
                                              text: 'acceptBid',
                                              fontSize: 14,
                                              color: AppTheme.white,
                                              fontWeight: AppTheme.medium,
                                            ),
                                            SizedBox(width: 0),
                                            Container(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Spacer(),
                                  SizedBox(width: 12),
                                  GestureDetector(
                                    onTap: () => Get.to(ChatPage()),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 45,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: AppTheme.iconColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            'assets/icon/msg.png',
                                            scale: 2.50,
                                            color: AppTheme.iconColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                          ],
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade200),
                SizedBox(height: 10),
                KText(
                  text: 'requiredSkills',
                  fontSize: 16,
                  fontFamily: 'Poppins semi bold',
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    KText(
                      text: 'photoshop',
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: AppTheme.medium,
                    ),
                    SizedBox(width: 20),
                    KText(
                      text: 'design',
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: AppTheme.medium,
                    ),
                    SizedBox(width: 20),
                    KText(
                      text: 'socialMedia',
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: AppTheme.medium,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade200),
                SizedBox(height: 10),
                KText(
                  text: 'projectCode',
                  fontSize: 16,
                  fontFamily: 'Poppins semi bold',
                ),
                SizedBox(height: 10),
                KText(
                  text: '30446337',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: AppTheme.regular,
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
