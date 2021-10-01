import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/PaymilestonePage.dart';
import 'package:board_ui/src/pages/chatPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployerHirePage extends StatefulWidget {
  const EmployerHirePage({Key? key}) : super(key: key);

  @override
  _EmployerHirePageState createState() => _EmployerHirePageState();
}

class _EmployerHirePageState extends State<EmployerHirePage> {
  bool value = false;

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
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: Image.asset(
                        'assets/icon/back.png',
                        scale: 2.70,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        KText(
                          text: 'Ongoing',
                          color: AppTheme.primaryColor,
                          fontFamily: 'Poppins Medium',
                          fontSize: 12,
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 2,
                        ),
                        SizedBox(width: 8),
                        KText(
                          text: 'Ends within 4 days',
                          color: AppTheme.textColor2,
                          fontFamily: 'Poppins Medium',
                          fontSize: 12,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    KText(
                      text: 'Design a school brochure',
                      fontSize: 19,
                      fontFamily: 'Poppins Semi Bold',
                    ),
                    SizedBox(height: 15),
                    KText(
                      text:
                          '''Lorem ipsum dolor sit amet, consectetur adipiscen
elit, sed do eiusmodLorem ipsum dolor sit ametreti
consectetur adipiscen elit, sed do eiusmod''',
                      fontSize: 12.50,
                      fontFamily: 'Poppins Medium',
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
                                  text: 'Project File.pdf',
                                  fontFamily: 'Poppins Medium',
                                  fontSize: 13,
                                ),
                                KText(
                                  text: '14 April 2020',
                                  color: Colors.grey,
                                  fontFamily: 'Poppins Medium',
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
                                  text: ' Muhammed',
                                  fontFamily: 'Poppins Medium',
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
                                      fontFamily: 'Poppins Medium',
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
                      text: 'Project Budget',
                      fontSize: 16,
                      fontFamily: 'Poppins Medium',
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: '10,000 ',
                            style: TextStyle(
                              fontSize: 17,
                              color: AppTheme.textColor,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            children: [
                              TextSpan(
                                text: 'SAR  ',
                                style: TextStyle(
                                  fontSize: 14,
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
                          fontSize: 17,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '  15,000 ',
                            style: TextStyle(
                              fontSize: 17,
                              color: AppTheme.textColor,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            children: [
                              TextSpan(
                                text: 'SAR',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppTheme.textColor2,
                                  fontFamily: 'Poppins Semi Bold',
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
                // clipBehavior: Clip.none,
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
                        color: AppTheme.primaryColor,
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
                    right: 40,
                    top: 30,
                    left: 40,
                    child: Column(
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
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: 8),
                                    KText(
                                      text: '   Khalid Saied Morsy',
                                      color: AppTheme.white,
                                      fontFamily: 'Poppins Medium',
                                      fontSize: 13,
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      child: Row(
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
                                            color: Colors.white,
                                            fontFamily: 'Poppins Medium',
                                            fontSize: 11,
                                          ),
                                          SizedBox(width: 5),
                                          KText(
                                            text: '(',
                                            color: Colors.white54,
                                            fontFamily: 'Poppins Medium',
                                            fontSize: 8,
                                          ),
                                          KText(
                                            text: ' 1200 Review ',
                                            color: Colors.white54,
                                            fontFamily: 'Poppins Medium',
                                            fontSize: 11,
                                          ),
                                          KText(
                                            text: ')',
                                            color: Colors.white54,
                                            fontFamily: 'Poppins Medium',
                                            fontSize: 8,
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
                        SizedBox(height: 10),
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
                              fontSize: 17,
                              color: AppTheme.white,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            children: [
                              TextSpan(
                                text: 'SAR',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white54,
                                  fontFamily: 'Poppins Semi Bold',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '4 Days',
                          style: GoogleFonts.cairo(
                            fontSize: 11,
                            color: AppTheme.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 80,
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
                            '''Lorem ipsum dolor sit amet, consectetur adipisce
nw elit, sed do eiusmodLorem ipsum dolor sit ami
etretqr consectetur adipiscen''',
                            style: TextStyle(
                              wordSpacing: 1,
                              fontSize: 11.50,
                              fontFamily: 'Poppins Medium',
                              color: Colors.white,
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
                        children: [
                          Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                              color: AppTheme.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                right: 10,
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/icon/msg1.png',
                                    width: 20,
                                  ),
                                  SizedBox(width: 20),
                                  KText(
                                    text: 'Chat with Freelancher',
                                    fontSize: 14,
                                    color: AppTheme.primaryColor,
                                    fontFamily: 'Poppins Medium',
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
                    child: Row(
                      children: [
                        Container(
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
                      ],
                    ),
                  ),
                ],
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
                              text: 'Project Management',
                              fontSize: 16,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            // SizedBox(height: 5),
                            KText(
                              text: 'Payment details related to the project',
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: 'Poppins Medium',
                            ),
                          ],
                        ),
                        trailing: Image.asset(
                          'assets/icon/settings1.png',
                          width: 25,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () => Get.to(PayMileStonePage()),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
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
                                      text: '  Create Milestone',
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  // Spacer(),
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
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Transform.scale(
                          scale: .80,
                          child: Radio(
                            activeColor: AppTheme.primaryColor,
                            toggleable: true,
                            value: 'null',
                            groupValue: 'null',
                            onChanged: (val) {
                              setState(() {});
                            },
                          ),
                        ),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(
                              text: 'Paid',
                              fontSize: 11,
                              color: AppTheme.primaryColor,
                              fontFamily: 'Poppins Medium',
                            ),
                            SizedBox(height: 2),
                            KText(
                              text: 'First part of the project is done',
                              fontSize: 14,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            SizedBox(height: 2),
                          ],
                        ),
                        subtitle: KText(
                          text: '3 days ago',
                          fontSize: 11,
                          color: Colors.grey,
                          fontFamily: 'Poppins Medium',
                        ),
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        leading: Transform.scale(
                          scale: .60,
                          child: Radio(
                            activeColor: AppTheme.primaryColor,
                            toggleable: true,
                            value: 'null',
                            groupValue: 'null',
                            onChanged: (val) {
                              setState(() {});
                            },
                          ),
                        ),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(
                              text: 'Ongoing',
                              fontSize: 11,
                              color: AppTheme.primaryColor,
                              fontFamily: 'Poppins Medium',
                            ),
                            SizedBox(height: 2),
                            KText(
                              text: 'Final Delivery of the project',
                              fontSize: 14,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
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
                              text: 'Project Completed',
                              fontSize: 16,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            KText(
                              text: 'Would you hire that freelancer again?',
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: 'Poppins Medium',
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
                              children: [
                                KText(
                                  text: '   Khalid Saied Morsy',
                                  // fontFamily: 'Poppins Medium',
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
                                      fontFamily: 'Poppins Medium',
                                      fontSize: 11,
                                    ),
                                    SizedBox(width: 5),
                                    KText(
                                      text: '(',
                                      color: AppTheme.textColor2,
                                      fontFamily: 'Poppins Medium',
                                      fontSize: 8,
                                    ),
                                    KText(
                                      text: ' 1200 Review ',
                                      color: AppTheme.textColor2,
                                      fontFamily: 'Poppins Medium',
                                      fontSize: 11,
                                    ),
                                    KText(
                                      text: ')',
                                      color: AppTheme.textColor2,
                                      fontFamily: 'Poppins Medium',
                                      fontSize: 8,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            RatingBarIndicator(
                              rating: 4,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 4,
                              itemSize: 20,
                              direction: Axis.horizontal,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          elevation: .10,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: KText(
                              text:
                                  '''Lorem ipsum dolor sit amet, consectetur adipisce
nw elit, sed do eiusmodLorem ipsum dolor sit ami
Lorem ipsum dolor sit amet, consectetur adipisce
nw elit, sed do eiusmodLorem ipsum dolor sit ami
etretqr consectetur adipiscen''',
                              fontSize: 12,
                              fontFamily: 'Poppins Medium',
                              color: Colors.grey,
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
                              text: 'Provide Feedback',
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 180),
            ],
          ),
        ),
      ),
    );
  }
}
