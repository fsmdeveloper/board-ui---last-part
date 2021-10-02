import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/PaymilestonePage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestWidgets extends StatefulWidget {
  const TestWidgets({Key? key}) : super(key: key);

  @override
  _TestWidgetsState createState() => _TestWidgetsState();
}

class _TestWidgetsState extends State<TestWidgets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 200),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: .10,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(
                              text: 'projectManagement',
                              fontSize: 16,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            // SizedBox(height: 5),
                            KText(
                              text: 'paymentsDetailsRelatedtotheProject',
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
                    ListView(
                      children: [
                        Stack(
                          children: [
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
                                    text: 'paid',
                                    fontSize: 11,
                                    color: AppTheme.primaryColor,
                                    fontFamily: 'Poppins Medium',
                                  ),
                                  SizedBox(height: 2),
                                  KText(
                                    text: 'firstPartoftheProjectIsdone',
                                    fontSize: 14,
                                    fontFamily: 'Poppins Semi Bold',
                                  ),
                                  SizedBox(height: 2),
                                ],
                              ),
                              subtitle: KText(
                                text: '3DaysAgo',
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
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
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
