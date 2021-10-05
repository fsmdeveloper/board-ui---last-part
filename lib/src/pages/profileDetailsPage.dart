import 'package:board_ui/src/tabBar/profileDetailsTabBar.dart';
import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/tabBar/reviewstabBar.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDetailsPage extends StatefulWidget {
  const ProfileDetailsPage({Key? key}) : super(key: key);

  @override
  _ProfileDetailsPageState createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState extends State<ProfileDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _currentTab = 0;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1400,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          'assets/img/profile-cover.png',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 50,
                          left: 30,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppTheme.textColor2.withOpacity(
                                .60,
                              ),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/icon/back.png',
                                color: AppTheme.white,
                                width: 8,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          right: 30,
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: AppTheme.iconColor,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'edit'.tr,
                                  style: GoogleFonts.cairo(
                                    fontSize: 13,
                                    color: AppTheme.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textDirection: TextDirection.ltr,
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.edit,
                                  color: AppTheme.white,
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 170,
                          child: Container(
                            height: 2500,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: AppTheme.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            // child: Test(),
                            child: Column(
                              children: [
                                SizedBox(height: 80),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: TabBar(
                                    labelStyle: GoogleFonts.cairo(
                                      fontWeight: AppTheme.medium,
                                      letterSpacing: .50,
                                      fontSize: 13,
                                    ),
                                    indicatorColor: AppTheme.iconColor,
                                    indicatorWeight: 3,
                                    unselectedLabelColor: _currentTab == 0
                                        ? Colors.grey
                                        : Colors.grey,
                                    labelColor: Colors.black,
                                    tabs: [
                                      Tab(
                                        text: 'profileDetails'.tr,
                                      ),
                                      Tab(
                                        text: 'reviews'.tr,
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
                                      ProfileDetailsBar(),
                                      ReviewsBar(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 115,
                          child: Center(
                            child: CircleAvatar(
                              radius: 42,
                              backgroundColor: AppTheme.white,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/img/chat-img-1.jpg',
                                  width: 76,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 205,
                          child: KText(
                            text: 'Hadeer Taha',
                            fontSize: AppTheme.textSize18,
                            fontWeight: AppTheme.bold,
                          ),
                        ),
                        Positioned(
                          top: 230,
                          child: KText(
                            text: '@Hadir0392',
                            fontWeight: FontWeight.normal,
                            color: AppTheme.textColor2,
                            fontSize: AppTheme.textSize11,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ],
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
