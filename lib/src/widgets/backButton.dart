import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget backButton() {
  return IconButton(
    onPressed: () => Get.back(),
    icon: Padding(
      padding: EdgeInsets.only(left: 5),
      child: Icon(
        Icons.arrow_back_ios,
        size: 16,
      ),
    ),
  );
}
