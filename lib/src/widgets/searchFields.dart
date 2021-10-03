import 'package:board_ui/src/configs/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final searchPage = InputDecoration(
  border: InputBorder.none,
  focusedBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
  ),
  enabledBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
  ),
  prefixIcon: Icon(
    Icons.search,
    size: 27,
    color: AppTheme.textColor,
  ),
  hintText: 'searchFieldText'.tr,
  fillColor: Colors.grey.shade50.withOpacity(.50),
  filled: true,
  hintStyle: TextStyle(
    fontSize: 13,
    fontWeight: AppTheme.regular,

    // fontWeight: FontWeight.w600,
    color: AppTheme.textColor2,
  ),
);
