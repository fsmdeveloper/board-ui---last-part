import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/bidSuccessPage.dart';

import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceingBidPage extends StatelessWidget {
  const PlaceingBidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppTheme.textColor2.withOpacity(.05),
                            ),
                            child: IconButton(
                              onPressed: () => Get.back(),
                              icon: Center(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                          KText(
                            text: 'makeAbid',
                            fontWeight: AppTheme.bold,
                            fontSize: AppTheme.textSize17,
                          ),
                          Container(),
                        ],
                      ),
                      SizedBox(height: 30),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  KText(
                                    text: 'open',
                                    fontSize: AppTheme.textSize11,
                                    fontWeight: AppTheme.regular,
                                    color: AppTheme.primaryColor,
                                  ),
                                  KText(
                                    text: 'endsWithIn4days',
                                    fontSize: AppTheme.textSize11,
                                    fontWeight: AppTheme.regular,
                                    color: AppTheme.textColor2,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              KText(
                                text: 'projectTitles',
                                fontSize: 19,
                                maxLines: 1,
                                fontWeight: AppTheme.bold,
                                color: AppTheme.textColor,
                              ),
                              SizedBox(height: 10),
                              Directionality(
                                textDirection: TextDirection.ltr,
                                child: Row(
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 15,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                              borderRadius:
                                                  BorderRadius.circular(50),
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
                                      fontWeight: AppTheme.medium,
                                      fontSize: AppTheme.textSize10,
                                    ),
                                    Spacer(),
                                    RichText(
                                      text: TextSpan(
                                        text: '10,000 ',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: AppTheme.textColor,
                                          fontWeight: AppTheme.bold,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'sar'.tr,
                                            style: GoogleFonts.cairo(
                                              fontSize: 12,
                                              fontWeight: AppTheme.medium,
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
                                          fontSize: 13,
                                          color: AppTheme.textColor,
                                          fontWeight: AppTheme.bold,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'sar'.tr,
                                            style: GoogleFonts.cairo(
                                              fontWeight: AppTheme.medium,
                                              fontSize: 12,
                                              color: AppTheme.textColor2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      KText(
                        text: 'bidValue',
                        fontWeight: AppTheme.medium,
                        fontSize: 12,
                        color: AppTheme.textColor,
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            suffixText: 'sar'.tr,
                            hintText: '..',
                            hintStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: AppTheme.medium,
                              color: AppTheme.textColor2,
                            ),
                            contentPadding:
                                EdgeInsets.only(left: 20, right: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'bidAfterAddingOurFees',
                            fontSize: AppTheme.textSize12,
                            fontWeight: FontWeight.w500,
                            color: AppTheme.textColor2,
                          ),
                          KText(
                            text: '11,300',
                            fontWeight: AppTheme.semi,
                            fontSize: AppTheme.textSize12,
                            color: AppTheme.textColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      KText(
                        text: 'requiredTime',
                        fontSize: 12,
                        fontWeight: AppTheme.medium,
                        color: AppTheme.textColor,
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            suffixText: 'days'.tr,
                            hintText: '..',
                            hintStyle: TextStyle(
                              // fontFamily: 'Poppins Semi Bold',
                              fontSize: 13,
                              color: AppTheme.textColor2,
                            ),
                            contentPadding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      KText(
                        text: 'bidDescription',
                        fontWeight: AppTheme.medium,
                        fontSize: 12,
                        color: AppTheme.textColor,
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 120,
                        width: Get.width,
                        child: TextField(
                          maxLines: 200,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: InputDecoration(
                            hintText: 'bidDescriptionField'.tr,
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppTheme.textColor2,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      GestureDetector(
                        onTap: () => Get.to(BidSuccessPage()),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppTheme.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: KText(
                              text: 'makeAbid',
                              color: AppTheme.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
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
