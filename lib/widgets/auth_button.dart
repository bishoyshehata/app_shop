
import 'package:app_shop/resources/color_manager.dart';
import 'package:app_shop/resources/font_manager.dart';
import 'package:app_shop/widgets/text_utils.dart';
import 'package:flutter/material.dart';



class AuthButton extends StatelessWidget {
  const AuthButton(
      {Key? key,
      required this.onpress,
      required this.Text,
      this.color,
      this.disabledColor,
        this.width,
        this.height,
        this.fontSize, this.alignment})
      : super(key: key);
  final Function()? onpress;
  final String Text;
  final Color? color;
  final double? width;
  final AlignmentGeometry? alignment;
  final double? height;
  final double? fontSize;
  final Color? disabledColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          alignment: alignment,
          disabledBackgroundColor: disabledColor,
          backgroundColor: color ?? ColorManager.primary,
          minimumSize:  Size(width ?? 400,height?? 55),
        ),
        child: Container(
          alignment: Alignment.center,
          child: TextUtils(
            color: Colors.white,
            fontSize: fontSize ??FontSize.s18,
            fontWeight: FontWeight.bold,
            isUnderLine: false,
            text: Text,
          ),
        ));
  }
}
