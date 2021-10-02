import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
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
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'ongoing',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.primaryColor,
                          ),
                          KText(
                            text: 'endsWithIn4days',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textColor2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    KText(
                      text: 'bidName',
                      fontSize: AppTheme.textSize16,
                      fontFamily: 'poppins Semi Bold',
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
                              style: TextStyle(
                                fontSize: 12,
                                color: AppTheme.textColor2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'chatSides'.tr,
                      style: GoogleFonts.cairo(
                        fontSize: 14,
                        color: AppTheme.textColor2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey.shade200,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView(
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
                            fontFamily: 'Poppins Semi Bold',
                            fontSize: 14.50,
                          ),
                          subtitle: KText(
                            text: '@mada123',
                            color: AppTheme.textColor2,
                            fontSize: 13,
                          ),
                          trailing: KText(
                            text: 'employer',
                            fontSize: 13,
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
                            fontFamily: 'Poppins Semi Bold',
                            fontSize: 14.50,
                          ),
                          subtitle: KText(
                            text: '@mada123',
                            color: AppTheme.textColor2,
                            fontSize: 13,
                          ),
                          trailing: KText(
                            text: 'freelancer',
                            fontSize: 13,
                            color: AppTheme.iconColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    ListTile(
                      leading: KText(
                        text: 'hideNotifications',
                        fontFamily: AppTheme.medium,
                        fontSize: 14,
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
                                  : [AppTheme.iconColor, AppTheme.iconColor],
                            ).createShader(r);
                          },
                        ),
                      ),
                    ),
                    ListTile(
                      leading: KText(
                        text: 'archiveChat',
                        fontFamily: AppTheme.medium,
                        fontSize: 14,
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
                                  : [AppTheme.iconColor, AppTheme.iconColor],
                            ).createShader(r);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.grey.shade200),
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
