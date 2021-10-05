import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/employerHiredPage.dart';
import 'package:board_ui/src/pages/employerProjectPage.dart';
import 'package:flutter/services.dart';
import 'profileDetailsPage.dart';
import 'chatPage.dart';
import 'homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomBarProfile extends StatefulWidget {
  const BottomBarProfile({Key? key}) : super(key: key);

  @override
  _BottomBarProfileState createState() => _BottomBarProfileState();
}

class _BottomBarProfileState extends State<BottomBarProfile> {
  // ignore: unused_field
  int _currentTab = 3;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget _currentScreens = ProfileDetailsPage();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness:
            _currentTab == 0 ? Brightness.light : Brightness.dark,
        statusBarColor:
            _currentTab == 0 ? AppTheme.primaryColor : AppTheme.white,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor('FBFBFB'),
        body: PageStorage(
          bucket: bucket,
          child: _currentScreens,
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Container(
            height: 70,
            width: 70,
            child: FittedBox(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: AppTheme.primaryColor,
                onPressed: () {},
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      _currentScreens = EmployerHirePage();
                      _currentTab = 5;
                    });
                  },
                  child: Center(
                    child: Image.asset(
                      'assets/icon/group_add.png',
                      color: Colors.white,
                      // color: _currentTab == 5
                      //     ? AppTheme.primaryColor
                      //     : AppTheme.textColor,
                      width: 22,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomSheet: BottomAppBar(
          color: AppTheme.white,
          elevation: 0,
          // shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            width: Get.width,
            height: 70,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(.50),
                  spreadRadius: 80,
                  blurRadius: 70,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      _currentScreens = HomePage();
                      _currentTab = 0;
                    });
                  },
                  child: Image.asset(
                    'assets/icon/home.png',
                    color: _currentTab == 0
                        ? AppTheme.primaryColor
                        : AppTheme.textColor,
                    width: 19.19,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      _currentScreens = EmployerProjectPage();
                      _currentTab = 1;
                    });
                  },
                  child: Image.asset(
                    'assets/icon/share.png',
                    width: 17.51,
                    color: _currentTab == 1
                        ? AppTheme.primaryColor
                        : AppTheme.textColor,
                  ),
                ),
                SizedBox(width: 45),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      _currentScreens = ChatPage();
                      _currentTab = 2;
                    });
                  },
                  child: Image.asset(
                    'assets/icon/msg.png',
                    width: 17.27,
                    color: _currentTab == 2
                        ? AppTheme.primaryColor
                        : AppTheme.textColor,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      _currentScreens = ProfileDetailsPage();
                      _currentTab = 3;
                    });
                  },
                  child: Image.asset(
                    'assets/icon/user2.png',
                    width: 16.27,
                    color: _currentTab == 3
                        ? AppTheme.primaryColor
                        : AppTheme.textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
