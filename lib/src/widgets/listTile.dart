import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';

import 'package:flutter/material.dart';

Widget listTile(
  void Function()? onTap,
  String text,
  String subText,
) {
  return ListTile(
    onTap: onTap,
    subtitle: KText(
      text: subText,
      color: AppTheme.textColor2,
      fontSize: 11,
    ),
    title: KText(
      text: text,
      fontFamily: 'Poppins Medium',
      fontSize: 15,
    ),
    trailing: Icon(
      Icons.arrow_forward_ios,
      size: 18,
      color: Colors.black,
    ),
  );
}
