import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatDetailsPage extends StatefulWidget {
  const ChatDetailsPage({Key? key}) : super(key: key);

  @override
  _ChatDetailsPageState createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  bool value1 = false;
  bool isExpanded = false;
  bool value = false;
  bool on = false;

  final Color activeColor = Color.fromARGB(255, 52, 199, 89);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        backButton(),
                        KText(
                          text: 'chatDetails',
                          fontFamily: 'Poppins Semi Bold',
                          fontSize: 17,
                        ),
                        Container(),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                KText(
                                  text: 'ongoing',
                                  fontSize: 11,
                                  fontWeight: AppTheme.regular,
                                  color: AppTheme.primaryColor,
                                ),
                                KText(
                                  text: 'endsWithIn4days',
                                  fontSize: 11,
                                  fontWeight: AppTheme.regular,
                                  color: AppTheme.textColor2,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            KText(
                              text: 'bidAbout',
                              fontSize: AppTheme.textSize17,
                              wordSpacing: 1,
                              fontWeight: AppTheme.bold,
                              maxLines: 1,
                              color: AppTheme.textColor,
                            ),
                            SizedBox(height: 10),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: RichText(
                                text: TextSpan(
                                  text: ' 15,000 ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppTheme.textColor,
                                    fontFamily: 'Poppins Semi Bold',
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'sar'.tr,
                                      style: GoogleFonts.cairo(
                                        fontSize: 11,
                                        color: AppTheme.textColor2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'chatSides'.tr,
                      style: GoogleFonts.cairo(
                        fontSize: 14,
                        color: AppTheme.textColor2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey.shade200,
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListView(
                      shrinkWrap: true,
                      primary: false,
                      children: [
                        ListTile(
                          onTap: () {},
                          leading: CircleAvatar(
                            backgroundColor: AppTheme.iconColor,
                            radius: 27,
                            child: CircleAvatar(
                              backgroundColor: AppTheme.white,
                              radius: 26,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/img/chat-side1.jpg',
                                  width: 45,
                                ),
                              ),
                            ),
                          ),
                          title: KText(
                            text: 'Muhammed Ibrahim',
                            fontWeight: AppTheme.medium,
                            fontSize: 14,
                          ),
                          subtitle: KText(
                            text: '@mada123',
                            color: AppTheme.textColor2,
                            fontSize: 12,
                          ),
                          trailing: KText(
                            text: 'employer',
                            fontSize: 12,
                            color: AppTheme.iconColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        ListTile(
                          onTap: () {},
                          leading: CircleAvatar(
                            backgroundColor: AppTheme.iconColor,
                            radius: 27,
                            child: CircleAvatar(
                              backgroundColor: AppTheme.white,
                              radius: 26,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/img/chat-side2.jpg',
                                  width: 45,
                                ),
                              ),
                            ),
                          ),
                          title: KText(
                            text: 'Muhammed Ibrahim',
                            fontWeight: AppTheme.medium,
                            fontSize: 14,
                          ),
                          subtitle: KText(
                            text: '@mada123',
                            color: AppTheme.textColor2,
                            fontSize: 12,
                          ),
                          trailing: KText(
                            text: 'freelancer',
                            fontSize: 12,
                            color: AppTheme.iconColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade50,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: KText(
                                text: 'hideNotifications',
                                fontWeight: AppTheme.medium,
                                fontSize: 13,
                              ),
                              trailing: Transform.scale(
                                scale: .90,
                                child: ShaderMask(
                                  child: CupertinoSwitch(
                                    activeColor: value1 == true
                                        ? AppTheme.iconColor
                                        : AppTheme.white,
                                    value: value,
                                    onChanged: (v) => setState(() => value = v),
                                  ),
                                  shaderCallback: (r) {
                                    return LinearGradient(
                                      colors: value1
                                          ? [AppTheme.white, AppTheme.white]
                                          : [
                                              AppTheme.iconColor,
                                              AppTheme.iconColor
                                            ],
                                    ).createShader(r);
                                  },
                                ),
                              ),
                            ),
                            ListTile(
                              leading: KText(
                                text: 'archiveChat',
                                fontWeight: AppTheme.medium,
                                fontSize: 13,
                              ),
                              trailing: Transform.scale(
                                scale: .90,
                                child: ShaderMask(
                                  child: CupertinoSwitch(
                                    activeColor: value1 == true
                                        ? AppTheme.iconColor
                                        : AppTheme.white,
                                    value: value,
                                    onChanged: (v) => setState(() => value = v),
                                  ),
                                  shaderCallback: (r) {
                                    return LinearGradient(
                                      colors: value1
                                          ? [AppTheme.white, AppTheme.white]
                                          : [
                                              AppTheme.iconColor,
                                              AppTheme.iconColor
                                            ],
                                    ).createShader(r);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.grey.shade200),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: KText(
                            text: 'blockThisChat',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {},
                          child: KText(
                            text: 'reportThisUser',
                            fontSize: 14,
                            color: HexColor('#E85454'),
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
    );
  }
}
