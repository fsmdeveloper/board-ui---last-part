import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/bidSuccessPage.dart';
import 'package:board_ui/src/pages/chatPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployerProjectPage extends StatelessWidget {
  const EmployerProjectPage({Key? key}) : super(key: key);

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
                  children: [
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: Image.asset(
                        'assets/icon/back.png',
                        scale: 2.70,
                      ),
                    ),
                    SizedBox(width: 200),
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
                              text: 'Edit',
                              fontFamily: 'Poppins Medium',
                              fontSize: 13,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.edit,
                              size: 16,
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
                      text: 'Open',
                      color: AppTheme.iconColor,
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
                  text: '''Lorem ipsum dolor sit amet, consectetur adipiscen
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
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'Avg. Bid',
                  fontSize: 16,
                  fontFamily: 'Poppins Medium',
                ),
                SizedBox(height: 10),
                Row(
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
                      text: '60 Bids',
                      fontFamily: 'Poppins Medium',
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
                      text: 'Bids (39)',
                      fontFamily: 'Poppins Medium',
                      fontSize: 16,
                    ),
                    Spacer(),
                    KText(
                      text: 'View All  ',
                      color: AppTheme.iconColor,
                      fontFamily: 'Poppins Medium',
                      fontSize: 14,
                    ),
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
                                        'assets/img/bid-img-1.jpg',
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
                                              text: 'Khalid Saied Morsy',
                                              fontFamily: 'Poppins Medium',
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
                                    Text(
                                      '4 Days',
                                      style: GoogleFonts.cairo(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
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
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  '''Lorem ipsum dolor sit amet, consectetur adipisce
nw elit, sed do eiusmodLorem ipsum dolor sit ami
etretqr consectetur adipiscen''',
                                  style: TextStyle(
                                    wordSpacing: 1,
                                    fontSize: 11.50,
                                    fontFamily: 'Poppins Medium',
                                    color: Colors.grey,
                                  ),
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
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          right: 10,
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
                                              text: 'Accept Bid',
                                              fontSize: 14,
                                              color: AppTheme.white,
                                              fontFamily: 'Poppins Medium',
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
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'Required Skills',
                  fontSize: 16,
                  fontFamily: 'Poppins semi bold',
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    KText(
                      text: 'Photoshop',
                      fontSize: 14,
                      color: Colors.grey,
                      fontFamily: 'Poppins Medium',
                    ),
                    SizedBox(width: 20),
                    KText(
                      text: 'Design',
                      fontSize: 14,
                      color: Colors.grey,
                      fontFamily: 'Poppins Medium',
                    ),
                    SizedBox(width: 20),
                    KText(
                      text: 'Social Media',
                      fontSize: 14,
                      color: Colors.grey,
                      fontFamily: 'Poppins Medium',
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey.shade100),
                SizedBox(height: 10),
                KText(
                  text: 'Project Code',
                  fontSize: 16,
                  fontFamily: 'Poppins semi bold',
                ),
                SizedBox(height: 10),
                KText(
                  text: '30446337',
                  fontSize: 14,
                  color: Colors.grey,
                  fontFamily: 'Poppins Medium',
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
