import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/PaymilestonePage.dart';
import 'package:board_ui/src/pages/chatPage.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class EmployerHirePage extends StatefulWidget {
  const EmployerHirePage({Key? key}) : super(key: key);

  @override
  _EmployerHirePageState createState() => _EmployerHirePageState();
}

class _EmployerHirePageState extends State<EmployerHirePage> {
  bool value = false;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    backButton(),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        KText(
                          text: 'ongoing',
                          color: AppTheme.primaryColor,
                          fontWeight: AppTheme.medium,
                          fontSize: 11,
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
                    SizedBox(height: 15),
                    KText(
                      text: 'designAschoolBrochure',
                      fontSize: AppTheme.textSize18,
                      fontWeight: AppTheme.semi,
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
                                  fontWeight: AppTheme.regular,
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
                                      fontWeight: AppTheme.regular,
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
                    Divider(color: Colors.grey.shade100),
                    SizedBox(height: 10),
                    KText(
                      text: 'projectBudget',
                      fontSize: 15,
                      fontWeight: AppTheme.regular,
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
                              fontWeight: AppTheme.semi,
                            ),
                            children: [
                              TextSpan(
                                text: 'sar'.tr,
                                style: GoogleFonts.cairo(
                                  fontSize: 13,
                                  color: AppTheme.textColor2,
                                  fontWeight: AppTheme.medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        KText(
                          text: '  ~',
                          color: AppTheme.iconColor,
                          fontSize: 17,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '  15,000 ',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppTheme.textColor,
                              fontWeight: AppTheme.semi,
                            ),
                            children: [
                              TextSpan(
                                text: 'sar'.tr,
                                style: GoogleFonts.cairo(
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
                  ],
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Container(
                      height: 240,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // color: AppTheme.primaryColor,
                        gradient: LinearGradient(
                          colors: [
                            AppTheme.primaryColor,
                            HexColor('#359FB8').withOpacity(.80),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 40,
                    child: Column(
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
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 8),
                                        KText(
                                          text: 'khalidSaiedMorsy',
                                          fontWeight: AppTheme.medium,
                                          color: AppTheme.white,
                                          fontSize: AppTheme.textSize13,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2),
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
                                          fontWeight: AppTheme.regular,
                                          color: Colors.white,
                                          fontSize: AppTheme.textSize11,
                                        ),
                                        SizedBox(width: 5),
                                        KText(
                                          text: '( 1200 ',
                                          color: Colors.white54,
                                          fontWeight: AppTheme.regular,
                                          fontSize: 11,
                                        ),
                                        KText(
                                          text: 'review',
                                          color: Colors.white54,
                                          fontWeight: AppTheme.regular,
                                          fontSize: AppTheme.textSize11,
                                        ),
                                        KText(
                                          text: ' )',
                                          color: Colors.white54,
                                          fontWeight: AppTheme.regular,
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
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: '11,240 ',
                            style: TextStyle(
                              fontSize: AppTheme.textSize15,
                              color: AppTheme.white,
                              fontWeight: AppTheme.semi,
                            ),
                            children: [
                              TextSpan(
                                text: 'sar'.tr,
                                style: GoogleFonts.cairo(
                                  fontSize: AppTheme.textSize14,
                                  color: Colors.white54,
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
                              color: AppTheme.white,
                              fontWeight: AppTheme.regular,
                            ),
                            children: [
                              TextSpan(
                                text: 'days'.tr,
                                style: GoogleFonts.cairo(
                                  fontSize: AppTheme.textSize11,
                                  color: AppTheme.white,
                                  fontWeight: AppTheme.regular,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 40,
                    right: 40,
                    child: Container(
                      height: 85,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white30,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Center(
                          child: Text(
                            'employerHiredBidAbout'.tr,
                            style: TextStyle(
                              wordSpacing: 1.20,
                              fontSize: 11,
                              fontWeight: AppTheme.regular,
                              color: AppTheme.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 100,
                    left: 40,
                    bottom: 40,
                    child: GestureDetector(
                      onTap: () => Get.to(ChatPage()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: AppTheme.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/icon/msg1.png',
                                    width: 20,
                                  ),
                                  SizedBox(width: 20),
                                  KText(
                                    text: 'chatWithFreelancer',
                                    fontSize: 14,
                                    color: AppTheme.primaryColor,
                                    fontWeight: AppTheme.medium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    bottom: 40,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white54,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/icon/expand_arrow.png',
                        scale: 2.50,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: .10,
                  child: Stack(
                    children: [
                      Container(
                        height: 340,
                        width: Get.width,
                        // color: AppTheme.primaryColor,
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            KText(
                              text: 'projectManagement',
                              fontSize: 16,
                              fontWeight: AppTheme.semi,
                            ),
                            SizedBox(height: 2),
                            KText(
                              text: 'paymentsDetailsRelatedtotheProject',
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: AppTheme.regular,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 30,
                        right: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icon/settings1.png',
                              width: 27,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 95,
                        right: 20,
                        left: 20,
                        child: GestureDetector(
                          onTap: () => Get.to(PayMileStonePage()),
                          child: Container(
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(),
                                    Container(
                                      alignment: Alignment.center,
                                      child: KText(
                                        text: 'createMilestone',
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: AppTheme.medium,
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: AppTheme.white,
                                      radius: 10,
                                      child: CircleAvatar(
                                        backgroundColor: AppTheme.primaryColor,
                                        radius: 8.80,
                                        child: Center(
                                          child: Icon(
                                            Icons.attach_money,
                                            color: AppTheme.white,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 30,
                        right: 30,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: AppTheme.primaryColor,
                                ),
                                // Transform.scale(
                                //   scale: .80,
                                //   child: Radio(
                                //     activeColor: AppTheme.primaryColor,
                                //     toggleable: true,
                                //     value: 'null',
                                //     groupValue: 'null',
                                //     onChanged: (val) {
                                //       setState(() {});
                                //     },
                                //   ),
                                // ),
                                SizedBox(width: 20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    KText(
                                      text: 'paid',
                                      fontSize: 11,
                                      color: AppTheme.primaryColor,
                                      fontWeight: AppTheme.regular,
                                    ),
                                    SizedBox(height: 3),
                                    KText(
                                      text: 'firstPartoftheProjectIsdone',
                                      fontSize: 14,
                                      fontWeight: AppTheme.semi,
                                    ),
                                    SizedBox(height: 4),
                                    KText(
                                      text: '3DaysAgo',
                                      fontSize: 11,
                                      color: Colors.grey,
                                      fontWeight: AppTheme.regular,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Stepper(
                                steps: [
                                  Step(
                                      title: Text("Task-7"),
                                      content: Text(""),
                                      subtitle: Text("Compled"),
                                      isActive: true,
                                      state: StepState.complete),
                                  Step(
                                      title: Text("Task-7"),
                                      content: Text(""),
                                      subtitle: Text("Compled"),
                                      isActive: true,
                                      state: StepState.complete),
                                ],
                                // currentStep: _index,
                                // onStepTapped: (index) {
                                //   setState(() {
                                //     _index = index;
                                //   });
                                // },
                               
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: AppTheme.primaryColor,
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: AppTheme.white,
                                  ),
                                ),
                                // Transform.scale(
                                //   scale: .80,
                                //   child: Radio(
                                //     activeColor: AppTheme.primaryColor,
                                //     toggleable: true,
                                //     value: 'null',
                                //     groupValue: 'null',
                                //     onChanged: (val) {
                                //       setState(() {});
                                //     },
                                //   ),
                                // ),

                                SizedBox(width: 20),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    KText(
                                      text: 'ongoing',
                                      fontSize: 11,
                                      color: AppTheme.primaryColor,
                                      fontWeight: AppTheme.regular,
                                    ),
                                    SizedBox(height: 3),
                                    KText(
                                      text: 'finalDeliveryoftheProject',
                                      fontSize: 14,
                                      fontWeight: AppTheme.semi,
                                    ),
                                    SizedBox(height: 4),
                                    KText(
                                      text: '3DaysAgo',
                                      fontSize: 11,
                                      color: Colors.grey,
                                      fontWeight: AppTheme.regular,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 210,
                        left: 37,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            height: 50,
                            width: 1.50,
                            color: Colors.grey.shade100,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: .10,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(
                              text: 'projectCompleted',
                              fontSize: 16,
                              fontWeight: AppTheme.semi,
                            ),
                            KText(
                              text: 'wouldYouHireThatFreelancerAgain',
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: AppTheme.regular,
                            ),
                          ],
                        ),
                        trailing: CircleAvatar(
                            backgroundColor: AppTheme.primaryColor,
                            radius: 14,
                            child: Center(
                              child: Checkbox(
                                fillColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                checkColor: AppTheme.white,
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                },
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          color: Colors.grey.shade100,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                KText(
                                  text: 'khalidSaiedMorsy',
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
                                    SizedBox(width: 5),
                                    KText(
                                      text: '( 1200 ',
                                      color: AppTheme.textColor2,
                                      fontWeight: AppTheme.regular,
                                      fontSize: 11,
                                    ),
                                    KText(
                                      text: 'review',
                                      color: AppTheme.textColor2,
                                      fontWeight: AppTheme.regular,
                                      fontSize: 11,
                                    ),
                                    KText(
                                      text: ' )',
                                      color: AppTheme.textColor2,
                                      fontWeight: AppTheme.regular,
                                      fontSize: 11,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                RatingBar.builder(
                                  itemSize: 20,
                                  initialRating: 4,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemCount: 4,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 120,
                          width: Get.width,
                          child: TextField(
                            maxLines: 200,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: 'employerHiredField'.tr,
                              hintStyle: TextStyle(
                                color: AppTheme.textColor2,
                                fontSize: 12,
                              ),
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
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
                              text: 'provideFeadback',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: AppTheme.semi,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
