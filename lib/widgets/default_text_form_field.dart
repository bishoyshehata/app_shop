import 'package:app_shop/resources/color_manager.dart';
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final Widget? prefix;
  final Widget? suffix;
  final int? maxLine;
  final int? minLine;
  final TextInputType keyboard;
  final String hintText;
  final String? initialValue;
  final double? width;
  final double? height;
  final TextInputAction? textInputAction;
  final GestureTapCallback? onTap;
  final int? maxLength;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final bool? enabled;
  final bool? readOnly;

  DefaultTextFormField({
    required this.controller,
    this.height,
    this.width,
    this.obscureText,
    required this.validator,
    this.textInputAction,
    this.prefix,
    this.suffix,
    this.onTap,
    this.onFieldSubmitted,
    this.onChanged,
    required this.hintText,
    required this.keyboard,
    this.minLine,
    this.maxLine = 1,
    this.maxLength,
    this.initialValue,
    this.enabled,
    this.readOnly,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? MediaQuery.of(context).size.width * .9,
      child: TextFormField(
        // textDirection:GetStorage().read<String>('lang')== "ar"? TextDirection.rtl : TextDirection.ltr,
        enabled: enabled,
        readOnly: readOnly ?? false,
        maxLength: maxLength,
        controller: controller,
        minLines: minLine,
        maxLines: maxLine,
        initialValue: initialValue,

        obscureText: obscureText ?? false,
        cursorColor: ColorManager.primary,
        keyboardType: keyboard,
        validator: validator,
        textInputAction: textInputAction ?? TextInputAction.next,
        onTap: onTap,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        onTapOutside: (value) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(
          counterText: '',

          prefixIcon: prefix,
          suffixIcon: suffix,
          label: Text(
            hintText,
          ),
          // hintStyle: TextStyle(
        ),
      ),
    );
  }
}
