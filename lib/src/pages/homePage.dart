import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/controllers/advanceController.dart';
import 'package:board_ui/src/tabBar/employerTab.dart';
import 'package:board_ui/src/tabBar/freelancerBar.dart';
import 'package:board_ui/src/widgets/advanceSegment.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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

//
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

//

  final segmentName = {
    'freelancer': 'Freelancer',
    'employer': 'Employer',
  };
//
  var _value = 'employer';

  //

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 2000,
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
                            text: 'Home',
                            color: AppTheme.white,
                            fontSize: 20,
                            fontFamily: AppTheme.semi,
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
                                  labelStyle: TextStyle(
                                    fontFamily: AppTheme.semi,
                                    fontSize: 13,
                                  ),
                                  indicatorPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 43,
                                  ),
                                  indicatorColor: AppTheme.white,
                                  indicatorWeight: 2,
                                  unselectedLabelStyle: TextStyle(
                                    fontFamily: AppTheme.regular,
                                  ),
                                  unselectedLabelColor: Colors.white70,
                                  labelColor: Colors.white,
                                  tabs: [
                                    Tab(
                                      text: 'All',
                                    ),
                                    Tab(
                                      text: 'Open',
                                    ),
                                    Tab(
                                      text: 'Ongoing',
                                    ),
                                    Tab(
                                      text: 'Done',
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
                      top: 220,
                      child: Container(
                        height: 2000,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: AppTheme.white,
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
        activeStyle: TextStyle(
          fontFamily: AppTheme.medium,
          color: AppTheme.primaryColor,
        ),
        inactiveStyle: TextStyle(
          fontFamily: AppTheme.medium,
          color: AppTheme.white,
        ),
        itemPadding: EdgeInsets.symmetric(
          horizontal: 45,
          vertical: 10,
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
