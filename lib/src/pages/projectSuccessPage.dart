import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/bottomBarHome.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectSuccessPage extends StatelessWidget {
  const ProjectSuccessPage({Key? key}) : super(key: key);

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
                  text: 'Project Created!',
                  fontSize: 23,
                  fontFamily: 'Poppins Semi Bold',
                ),
                SizedBox(height: 10),
                KText(
                  text: '''We created a new project for you and you 
will find all details there''',
                  fontSize: 13,
                  color: AppTheme.textColor2,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KText(
                      text: 'Open',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.primaryColor,
                    ),
                    KText(
                      text: 'Ends within 4 days',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textColor2,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  child: KText(
                    text: '''Design a WordPress website for fas ...''',
                    fontSize: 15.50,
                    fontFamily: 'poppins Semi Bold',
                    color: AppTheme.textColor,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: ' 10,000 ',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppTheme.textColor,
                          fontFamily: 'Poppins Semi Bold',
                        ),
                        children: [
                          TextSpan(
                            text: 'SAR ',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.textColor2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    KText(
                      text: '~',
                      color: AppTheme.iconColor,
                      fontSize: 16,
                    ),
                    RichText(
                      text: TextSpan(
                        text: ' 15,000 ',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppTheme.textColor,
                          fontFamily: 'Poppins Semi Bold',
                        ),
                        children: [
                          TextSpan(
                            text: 'SAR',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.textColor2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 150),
                GestureDetector(
                  onTap: () => Get.to(BottomBarHome()),
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
                        text: 'Back to HomePage',
                        color: AppTheme.white,
                        fontSize: 15,
                        fontFamily: AppTheme.semi,
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
