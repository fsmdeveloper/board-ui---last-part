import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/PaymilestonePage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StackTest extends StatefulWidget {
  const StackTest({Key? key}) : super(key: key);

  @override
  State<StackTest> createState() => _StackTestState();
}

class _StackTestState extends State<StackTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 200),
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
                        children: [
                          KText(
                            text: 'projectManagement',
                            fontSize: 16,
                            fontWeight: AppTheme.semi,
                          ),
                          SizedBox(height: 8),
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
                      child: Image.asset(
                        'assets/icon/settings1.png',
                        width: 27,
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
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Positioned(
                      bottom: 110,
                      left: 30,
                      right: 30,
                      child: Row(
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
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 37,
                      child: Container(
                        height: 50,
                        width: 1.50,
                        color: Colors.grey.shade100,
                      ),
                    ),
                    Positioned(
                      left: 32,
                      right: 30,
                      bottom: 30,
                      child: Row(
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
