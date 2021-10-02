import 'package:board_ui/src/configs/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;

  final String? fontFamily;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  final TextDirection? textDirection;

  KText({
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text'.tr,
      style: TextStyle(
        fontSize: fontSize != null ? fontSize : 13,
        // //  arabic fonts enable ==>
        // fontFamily: fontFamily != null ? 'Cairo Regular' : 'Cairo Regular',

        // fontWeight: fontWeight != null ? fontWeight : FontWeight.bold,

        //  English fonts enable ==>

        fontFamily: fontFamily != null ? 'Cairo Regular' : 'Poppins Regular',

        fontWeight: fontWeight != null ? fontWeight : FontWeight.normal,

        color: color != null ? color : AppTheme.textColor,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }
}
