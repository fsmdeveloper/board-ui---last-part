import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class InsideChatPage extends StatefulWidget {
  const InsideChatPage({Key? key}) : super(key: key);

  @override
  _InsideChatPageState createState() => _InsideChatPageState();
}
//

//

//
class _InsideChatPageState extends State<InsideChatPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: HexColor('#666666'),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          KText(
                            text: 'designScoolCoverBanner',
                            fontWeight: FontWeight.w600,
                            color: AppTheme.iconColor,
                            fontSize: 13,
                          ),
                          Text(
                            'onGoing'.tr,
                            style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textColor2,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 25),
                        Padding(
                          padding: EdgeInsets.only(left: 45, right: 30),
                          child: Row(
                            children: [
                              Container(
                                child: GestureDetector(
                                  onTap: () => Get.back(),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 18,
                                    color: AppTheme.textColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 25),
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: Image.asset(
                                      'assets/img/chat-img-1.jpg',
                                      width: 53,
                                    ),
                                  ),
                                  Positioned(
                                    right: -3,
                                    bottom: 1,
                                    child: CircleAvatar(
                                      backgroundColor: AppTheme.white,
                                      radius: 9,
                                      child: CircleAvatar(
                                        backgroundColor: AppTheme.primaryColor,
                                        radius: 6,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  KText(
                                    text: 'nadaElsayed',
                                    fontFamily: 'Poppins Semi Bold',
                                    fontSize: 15,
                                  ),
                                  KText(
                                    text: 'online',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                                size: 26,
                                color: AppTheme.iconColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),

              //
              Directionality(
                textDirection: TextDirection.ltr,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: Get.width,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: Image.asset(
                                      'assets/img/chat-img-1.jpg',
                                      width: 40,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                      color: Colors.grey.shade50,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 15,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: KText(
                                              text:
                                                  '''Lorem ipsum dolor sit amet, consectetur
adipiscenw elitsed.''',
                                              fontSize: 12.50,
                                              maxLines: 100,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          KText(
                                            text: '17:45',
                                            fontSize: 12,
                                            color: AppTheme.textColor2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 30,
                            right: 100,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: AppTheme.iconColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5),
                                  Text(
                                    'Nothing planned, and you?',
                                    style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      color: AppTheme.white,
                                    ),
                                    maxLines: 100,
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      '18:04',
                                      style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        color: AppTheme.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: Get.width,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 75),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: Image.asset(
                                      'assets/img/chat-img-1.jpg',
                                      width: 40,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(18),
                                        topLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                      color: Colors.grey.shade50,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 15,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            flex: 2,
                                            child: KText(
                                              text:
                                                  '''Lorem ipsum dolor sit amet, consectetura 
dipiscenw elit, sed do eiusmodLorem ipsu
m dolor sit ametretqr consectetu.''',
                                              fontSize: 12,
                                              maxLines: 100,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          KText(
                                            text: 'Now',
                                            fontSize: 10,
                                            color: AppTheme.textColor2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 55),
                            child: Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Colors.grey.shade50,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      typeChatLoad(AppTheme.textColor),
                                      SizedBox(width: 15),
                                      typeChatLoad(
                                          AppTheme.textColor.withOpacity(.60)),
                                      SizedBox(width: 15),
                                      typeChatLoad(AppTheme.textColor2),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120),
            ],
          ),
        ),
        bottomSheet: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            height: 100,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppTheme.white,
              boxShadow: [
                BoxShadow(
                  color: AppTheme.textColor2.withOpacity(.80),
                  spreadRadius: 10,
                  blurRadius: 40,
                  offset: Offset(1, 30),
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 45,
                    width: 230,
                    child: TextField(
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1.50,
                              color: AppTheme.textColor2.withOpacity(.20)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.50,
                            color: AppTheme.textColor2.withOpacity(.20),
                          ),
                        ),
                        hintText: 'Add a comment',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: AppTheme.textColor2.withOpacity(.70),
                        ),
                        suffixIcon: Image.asset(
                          'assets/icon/right_arrow.png',
                          width: 22,
                        ),
                        contentPadding: EdgeInsets.only(left: 20),
                        filled: false,
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade50,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icon/attach_file.png',
                        width: 20,
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade50,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icon/mic.png',
                        width: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget typeChatLoad(
    Color color,
  ) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 1.80,
    );
  }
}
