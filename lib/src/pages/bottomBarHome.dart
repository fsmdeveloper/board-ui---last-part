import 'package:board_ui/src/configs/appTheme.dart';
import 'projectPage.dart';
import 'package:flutter/services.dart';
import 'profilePage.dart';

import 'chatPage.dart';

import 'homePage.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'searchPages.dart';

class BottomBarHome extends StatefulWidget {
  const BottomBarHome({Key? key}) : super(key: key);

  @override
  _BottomBarHomeState createState() => _BottomBarHomeState();
}

class _BottomBarHomeState extends State<BottomBarHome> {
  int _currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget _currentScreens = HomePage();

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
        backgroundColor: HexColor('#fbfbfb'),
        body: PageStorage(
          bucket: bucket,
          child: _currentScreens,
        ),
        floatingActionButton: Container(
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
                    _currentScreens = ProjectPage();
                    _currentTab = 5;
                  });
                },
                child: Image.asset(
                  'assets/icon/add.png',
                  color: Colors.white,
                  // color: _currentTab == 5
                  //     ? AppTheme.primaryColor
                  //     : AppTheme.textColor,
                  width: 21.31,
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
                      _currentScreens = SearchPage();
                      _currentTab = 1;
                    });
                  },
                  child: Image.asset(
                    'assets/icon/search.png',
                    width: 18.51,
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
                      _currentScreens = ProfilePage();
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
