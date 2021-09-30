import 'package:board_ui/src/components/profileDetailsTabBar.dart';
import 'package:board_ui/src/components/reviewstabBar.dart';
import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/controllers/advanceController.dart';
import 'package:board_ui/src/pages/chatPage.dart';
import 'package:board_ui/src/pages/profilePage.dart';
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
  late AdvancedSegmentController _advanceC =
      AdvancedSegmentController('freelancher');
  late TabController _tabController;

  // ignore: unused_field
  int _currentTab = 0;

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

  final _segments = <String, String>{
    'freelancher': 'Freelancer',
    'employer': 'Employer',
  };
  var _value = 'freelancher';

  final bool isFreelancer = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 220,
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
                        SizedBox(height: 20),
                        KText(
                          text: 'Home',
                          color: AppTheme.white,
                          fontSize: 17,
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
                              // SizedBox(height: 80),
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
                              Expanded(
                                child: TabBarView(
                                  controller: _tabController,
                                  children: [
                                    KText(text: ''),
                                    KText(text: ''),
                                    KText(text: ''),
                                    KText(text: ''),
                                  ],
                                ),
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
                    top: 195,
                    child: Container(
                              height: Get.height,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: AppTheme.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 80),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30),
                                    child: TabBar(
                                      indicatorColor: AppTheme.iconColor,
                                      indicatorWeight: 3,
                                      unselectedLabelColor: _currentTab == 0
                                          ? Colors.grey
                                          : Colors.grey,
                                      labelColor: Colors.black,
                                      tabs: [
                                        Tab(
                                          text: 'Profile',
                                        ),
                                        Tab(
                                          text: 'Reviews',
                                        ),
                                        Tab(
                                          text: 'Profile',
                                        ),
                                        Tab(
                                          text: 'Reviews',
                                        ),
                                      ],
                                      controller: _tabController,
                                      indicatorSize: TabBarIndicatorSize.tab,
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      controller: _tabController,
                                      children: [
                                        ProfileDetailsComponents(),
                                        ReviewsComponents(),
                                        ProfileDetailsComponents(),
                                        ReviewsComponents(),
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
        segments: _segments,
        controller: _advanceC,
        // onValueChanged: (value) {
        //   setState(() {
        //     // isFreelancer.value == true ? ChatPage() : ProfilePage();
        //   });
        // },
        onValueChanged: (value) {
          _value == value ? ChatPage() : ProfilePage();
        },
        value: _value,
      ),
    );
  }
}
