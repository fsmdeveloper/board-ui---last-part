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
      fontWeight: AppTheme.regular,
      fontSize: 11,
    ),
    title: KText(
      text: text,
      fontWeight: AppTheme.medium,
      fontSize: 15,
    ),
    trailing: Container(
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppTheme.textColor2.withOpacity(.05),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),
      ),
    ),
  );
}
