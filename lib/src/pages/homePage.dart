import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/controllers/advanceController.dart';
import 'package:board_ui/src/tabBar/employerTab.dart';
import 'package:board_ui/src/tabBar/freelancerBar.dart';
import 'package:board_ui/src/widgets/advanceSegment.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //
  late AdvancedSegmentController _advanceC =
      AdvancedSegmentController('freelancher');
  //
  late TabController _tabController;

//

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

//

  final segmentName = {
    'freelancer': 'freelancer'.tr,
    'employer': 'employer'.tr,
  };
//
  var _value = 'freelancer';

  //

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#fbfbfb'),
        body: SingleChildScrollView(
          child: Container(
            height: 1000,
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 250,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          KText(
                            text: 'home',
                            color: AppTheme.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 30),
                          advanceSegment(),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 60,
                            child: Column(
                              children: [
                                TabBar(
                                  labelStyle: GoogleFonts.cairo(
                                    fontWeight: AppTheme.semi,
                                    fontSize: 13,
                                  ),
                                  indicatorPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 43,
                                  ),
                                  indicatorColor: AppTheme.white,
                                  indicatorWeight: 2,
                                  unselectedLabelStyle: GoogleFonts.cairo(
                                    fontWeight: AppTheme.regular,
                                  ),
                                  unselectedLabelColor: Colors.white70,
                                  labelColor: Colors.white,
                                  tabs: [
                                    Tab(
                                      text: 'all'.tr,
                                    ),
                                    Tab(
                                      text: 'open'.tr,
                                    ),
                                    Tab(
                                      text: 'ongoing'.tr,
                                    ),
                                    Tab(
                                      text: 'done'.tr,
                                    ),
                                  ],
                                  controller: _tabController,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 30,
                      right: 30,
                      top: 190,
                      child: Container(
                        height: 1000,
                        width: Get.width,
                        decoration: BoxDecoration(
                          // color: HexColor('#fbfbfb'),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Expanded(
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  FreelancerBar(),
                                  EmployerBar(),
                                  Center(child: KText(text: 'OnGoing')),
                                  Center(child: KText(text: 'Done')),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget advanceSegment() {
    return Center(
      child: AdvancedSegment(
        sliderOffset: 5,
        sliderColor: Colors.white,
        backgroundColor: Colors.white24,
        shadow: [
          BoxShadow(
            color: Colors.transparent,
          ),
        ],
        activeStyle: GoogleFonts.cairo(
          fontWeight: AppTheme.semi,
          color: AppTheme.primaryColor,
        ),
        inactiveStyle: GoogleFonts.cairo(
          fontWeight: AppTheme.semi,
          color: AppTheme.white,
        ),
        itemPadding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 12,
        ),
        segments: segmentName,
        controller: _advanceC,
        onValueChanged: (groupValues) {
          setState(() {
            _value = groupValues;
          });
        },
        value: _value,
      ),
    );
  }
}
