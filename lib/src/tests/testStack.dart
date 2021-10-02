import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GuideRequestPage extends StatefulWidget {
  GuideRequestPage({Key? key}) : super(key: key);

  @override
  State<GuideRequestPage> createState() => _GuideRequestPageState();
}

class _GuideRequestPageState extends State<GuideRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              height: 300,
              child: ListView(shrinkWrap: true, primary: false, children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: ListTile(
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
                              text: 'ongoing',
                              fontSize: 11,
                              color: AppTheme.primaryColor,
                              fontFamily: 'Poppins Medium',
                            ),
                            SizedBox(height: 2),
                            KText(
                              text: 'finalDeliveryoftheProject',
                              fontSize: 14,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                          ],
                        ),
                        subtitle: KText(
                          text: '3DaysAgo',
                          fontSize: 11,
                          color: Colors.grey,
                          fontFamily: 'Poppins Medium',
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 2,
                      color: AppTheme.textColor2,
                    ),
                    Positioned(
                      top: 100,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: ListTile(
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
                                  text: 'ongoing',
                                  fontSize: 11,
                                  color: AppTheme.primaryColor,
                                  fontFamily: 'Poppins Medium',
                                ),
                                SizedBox(height: 2),
                                KText(
                                  text: 'finalDeliveryoftheProject',
                                  fontSize: 14,
                                  fontFamily: 'Poppins Semi Bold',
                                ),
                              ],
                            ),
                            subtitle: KText(
                              text: '3DaysAgo',
                              fontSize: 11,
                              color: Colors.grey,
                              fontFamily: 'Poppins Medium',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
