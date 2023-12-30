
import 'package:app_shop/resources/color_manager.dart';
import 'package:app_shop/resources/font_manager.dart';
import 'package:flutter/material.dart';

class TextUtils extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final bool isUnderLine;
  final int? maxLines;
  final TextDirection? textDirection;

  final TextAlign? textAlign;

  const TextUtils(
      {required this.fontWeight,
      required this.text,
      this.color,
      this.isUnderLine = false,
      this.fontSize,
      this.textAlign,
      this.maxLines,
      this.textDirection,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      textDirection: textDirection,
      style: TextStyle(

        fontFamily: FontConstants.fontFamilyEn,
        color: color ?? ColorManager.primary,
        fontSize: fontSize ?? FontSize.s11,
        fontWeight: fontWeight,
        decoration:
            isUnderLine ? TextDecoration.underline : TextDecoration.none,
        decorationThickness: 10,
      ),

      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }

  // getTextDirection() {
  //   switch (intl.Intl.getCurrentLocale()) {
  //     case 'en':
  //       return TextDirection.ltr;
  //     case 'ar':
  //       return TextDirection.rtl;
  //   }
  // }
}
