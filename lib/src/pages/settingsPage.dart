import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/refundPolicyPages.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groovin_widgets/groovin_widgets.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var value;
  bool value1 = false;
  bool isExpanded = false;

  final padding = EdgeInsets.symmetric(horizontal: 40);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  KText(
                    text: 'Notifications',
                    fontSize: 17,
                    fontFamily: 'Poppins Semi Bold',
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 50),
              Column(
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    child: GroovinExpansionTile(
                      leading: Image.asset(
                        'assets/icon/job-setting.png',
                        width: 20,
                      ),
                      title: KText(
                        text: 'Jobs',
                        fontSize: 15,
                        fontFamily: 'Poppins Medium',
                      ),
                      trailing: Icon(
                        isExpanded == true
                            ? Icons.expand_more
                            : Icons.arrow_forward_ios,
                        size: isExpanded == true ? 25 : 14,
                        color: isExpanded == true ? Colors.black : Colors.grey,
                      ),
                      onExpansionChanged: (value) {
                        setState(() => isExpanded = value);
                      },
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                ),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading: KText(
                                          text: 'Hide Notifications',
                                          fontFamily: 'Poppins Medium',
                                          fontSize: 14,
                                        ),
                                        trailing: Transform.scale(
                                          scale: .90,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade300
                                                      .withOpacity(.80),
                                                  spreadRadius: .10,
                                                  blurRadius: 30,
                                                  offset: Offset(5, 10),
                                                ),
                                              ],
                                            ),
                                            child: ShaderMask(
                                              child: CupertinoSwitch(
                                                activeColor: value1 == true
                                                    ? AppTheme.iconColor
                                                    : AppTheme.iconColor,
                                                value: value1,
                                                onChanged: (v) =>
                                                    setState(() => value1 = v),
                                              ),
                                              shaderCallback: (r) {
                                                return LinearGradient(
                                                  colors: value1
                                                      ? [
                                                          AppTheme.white,
                                                          AppTheme.white
                                                        ]
                                                      : [
                                                          AppTheme.iconColor,
                                                          AppTheme.iconColor
                                                        ],
                                                ).createShader(r);
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      ListTile(
                                        leading: KText(
                                          text: 'Available Jobs',
                                          fontFamily: 'Poppins Medium',
                                          fontSize: 14,
                                        ),
                                        trailing: Transform.scale(
                                          scale: .90,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade300
                                                      .withOpacity(.80),
                                                  spreadRadius: .10,
                                                  blurRadius: 30,
                                                  offset: Offset(5, 10),
                                                ),
                                              ],
                                            ),
                                            child: ShaderMask(
                                              child: CupertinoSwitch(
                                                activeColor: value1 == true
                                                    ? AppTheme.iconColor
                                                    : AppTheme.iconColor,
                                                value: value1,
                                                onChanged: (v) =>
                                                    setState(() => value1 = v),
                                              ),
                                              shaderCallback: (r) {
                                                return LinearGradient(
                                                  colors: value1
                                                      ? [
                                                          AppTheme.white,
                                                          AppTheme.white
                                                        ]
                                                      : [
                                                          AppTheme.iconColor,
                                                          AppTheme.iconColor
                                                        ],
                                                ).createShader(r);
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    child: GroovinExpansionTile(
                      leading: Image.asset(
                        'assets/icon/account-settings.png',
                        width: 20,
                      ),
                      title: KText(
                        text: 'Account Settings',
                        fontSize: 15,
                        fontFamily: 'Poppins Medium',
                      ),
                      trailing: Icon(
                        isExpanded == true
                            ? Icons.expand_more
                            : Icons.arrow_forward_ios,
                        size: isExpanded == true ? 25 : 14,
                        color: isExpanded == true ? Colors.black : Colors.grey,
                      ),
                      onExpansionChanged: (value) {
                        setState(() => isExpanded = value);
                      },
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                ),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    children: [
                                      ListTile(
                                        leading: KText(
                                          text: 'Hide Notifications',
                                          fontFamily: 'Poppins Medium',
                                          fontSize: 14,
                                        ),
                                        trailing: Transform.scale(
                                          scale: .90,
                                          child: ShaderMask(
                                            child: CupertinoSwitch(
                                              activeColor: value1 == true
                                                  ? AppTheme.iconColor
                                                  : AppTheme.iconColor,
                                              value: value1,
                                              onChanged: (v) =>
                                                  setState(() => value1 = v),
                                            ),
                                            shaderCallback: (r) {
                                              return LinearGradient(
                                                colors: value1
                                                    ? [
                                                        AppTheme.white,
                                                        AppTheme.white
                                                      ]
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
                                          text: 'Available Jobs',
                                          fontFamily: 'Poppins Medium',
                                          fontSize: 14,
                                        ),
                                        trailing: Transform.scale(
                                          scale: .90,
                                          child: ShaderMask(
                                            child: CupertinoSwitch(
                                              activeColor: value1 == true
                                                  ? AppTheme.iconColor
                                                  : AppTheme.iconColor,
                                              value: value1,
                                              onChanged: (v) =>
                                                  setState(() => value1 = v),
                                            ),
                                            shaderCallback: (r) {
                                              return LinearGradient(
                                                colors: value1
                                                    ? [
                                                        AppTheme.white,
                                                        AppTheme.white
                                                      ]
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              listTile1(
                () => Get.to(RefundPolicyPage()),
                'Refund Policy',
                'assets/icon/refund-setting.png',
              ),
              SizedBox(height: 10),
              listTile1(
                () {},
                'FAQs',
                'assets/icon/faq-setting.png',
              ),
              SizedBox(height: 10),
              listTile1(
                () {},
                'Rate our App',
                'assets/icon/star.png',
              ),
              SizedBox(height: 10),
              listTile1(
                () {},
                'Change Password',
                'assets/icon/lock-setting.png',
              ),
              SizedBox(height: 10),
              listTile1(
                () {},
                'Logout',
                'assets/icon/logout-setting.png',
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget listTile1(
    void Function()? onTap,
    String text,
    String img,
  ) {
    return ListTile(
      tileColor: Colors.grey.shade100,
      onTap: onTap,
      leading: Image.asset(
        img,
        width: 20,
      ),
      title: KText(
        text: text,
        fontSize: 15,
        fontFamily: 'Poppins Medium',
      ),
    );
  }
}
