import 'package:board_ui/src/pages/OtpPage.dart';
import 'package:board_ui/src/pages/PaymilestonePage.dart';
import 'package:board_ui/src/pages/bottomBarHome.dart';
import 'package:board_ui/src/pages/bottomBarProfile.dart';
import 'package:board_ui/src/pages/chatPage.dart';
import 'package:board_ui/src/pages/insideChatPage.dart';
import 'package:board_ui/src/pages/loginPage.dart';
import 'package:board_ui/src/pages/loginWithPage.dart';
import 'package:board_ui/src/pages/registerPage.dart';
import 'package:board_ui/src/pages/registerWithPage.dart';
import 'package:board_ui/src/pages/searchPages.dart';
import 'package:board_ui/src/pages/splashPage.dart';
import 'package:board_ui/src/pages/topupBalanceMilestonePage.dart';
import 'package:board_ui/src/tabBar/employerTab.dart';
import 'package:board_ui/src/tabBar/freelancerBar.dart';
import 'package:board_ui/src/tabBar/profileDetailsTabBar.dart';
import 'package:flutter/cupertino.dart';

List<Widget> allPage = [
  SplashPage(), 
  //Splash Page 
  LoginPage(), 
  // Login Page 
  LoginWithPage(),
   // Login With Page
  RegisterWithPage(), 
  // Register With Page
  RegisterPage(), 
  // Register Page - only name Field.
  OtpPage(),
   // otp page -
  BottomBarHome(), 
  //home Bottom navigationBar
  FreelancerBar(),
  //Freelancer Bar Home
  EmployerBar(),
  // Home Employer Tab bar
  BottomBarProfile(),
  // profile bottom navigation bar
  ProfileDetailsBar(),
  //About Profile Tab Bar 
  SearchPage(),
  //Search Page ,
  ChatPage(),
  // chat page 
  InsideChatPage(),
  // show chat page - all chating
  PayMileStonePage(),
  //pay milestones page
  TopUpBalanceMileStonePage(),
  // top up balance milestones page
  // .................................


  



];
