import 'package:board_ui/src/configs/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final searchPage = InputDecoration(
  border: InputBorder.none,
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide.none,
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide.none,
  ),
  prefixIcon: Icon(
    Icons.search,
    size: 27,
    color: AppTheme.textColor,
  ),
  // Image.asset(
  //   'assets/icon/search1.png',
  //   color: AppTheme.textColor,
  // ),
  hintText: 'searchFieldText'.tr,
  hintStyle: TextStyle(
    fontSize: 13,
    fontFamily: 'Cairo Semi Bold',
    fontWeight: FontWeight.bold,
    color: AppTheme.textColor2,
  ),
);
