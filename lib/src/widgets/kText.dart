import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/controllers/langController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KText extends StatelessWidget {
  final _langC = Get.put(LangController());

  final String text;
  final Color? color;
  final double? fontSize;

  final String? fontFamily;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? wordSpacing;

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
    this.wordSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Text(
        '$text'.tr,
        style: TextStyle(
          fontSize: fontSize != null ? fontSize : 13,
          // //  arabic fonts enable ==>
          fontFamily: _langC.selectedLang.value == Locale('ar', 'AR')
              ? 'Cairo Regular'
              : 'Poppins Regular',
          // fontFamily: fontFamily != null ? 'Cairo Regular' : 'Cairo Regular',
          // fontWeight: fontWeight != null ? fontWeight : FontWeight.bold,

          //  English fonts enable ==>

          // fontFamily: fontFamily != null ? fontFamily : 'Cairo Regular',

          fontWeight: fontWeight != null ? fontWeight : FontWeight.normal,

          color: color != null ? color : AppTheme.textColor,
          wordSpacing: wordSpacing,
        ),
        maxLines: maxLines,
        textAlign: textAlign,
        textDirection: textDirection,
      ),
    );
  }
}
