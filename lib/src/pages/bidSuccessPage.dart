import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/projectPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BidSuccessPage extends StatelessWidget {
  const BidSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                SizedBox(height: 140),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(5, 10),
                          spreadRadius: .50,
                          blurRadius: 40,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: AppTheme.primaryColor,
                      child: Image.asset(
                        'assets/icon/done.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                KText(
                  text: 'bidPlaced',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                SizedBox(height: 10),
                KText(
                  text: 'bidPlaceAbout',
                  fontSize: 13,
                  wordSpacing: 1,
                  color: AppTheme.textColor2,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade50,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            KText(
                              text: 'open',
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.primaryColor,
                            ),
                            KText(
                              text: 'endsWithIn4days',
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textColor2,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        KText(
                          text: 'bidAbout',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.textColor,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/img/bid-img-2.jpg',
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
                                        'assets/img/bid-img-1.jpg',
                                        width: 25,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            KText(
                              text: '60Bids',
                              fontSize: 11,
                            ),
                            Spacer(),
                            RichText(
                              text: TextSpan(
                                text: '10,000 ',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: AppTheme.textColor,
                                  fontWeight: AppTheme.medium,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'sar'.tr,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: AppTheme.regular,
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
                                  fontWeight: AppTheme.medium,
                                  fontSize: 13,
                                  color: AppTheme.textColor,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'sar'.tr,
                                    style: TextStyle(
                                      fontWeight: AppTheme.regular,
                                      fontSize: 12,
                                      color: AppTheme.textColor2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 170),
                GestureDetector(
                  onTap: () => Get.to(ProjectPage()),
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
                        text: 'backToprojects',
                        fontWeight: AppTheme.semi,
                        color: AppTheme.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
