
import 'package:app_shop/resources/color_manager.dart';
import 'package:app_shop/resources/font_manager.dart';
import 'package:app_shop/resources/values_manager.dart';
import 'package:app_shop/widgets/text_utils.dart';
import 'package:flutter/material.dart';



class OutLinedButton extends StatelessWidget {
   OutLinedButton(
      {Key? key,
        required this.onpress,
        required this.text,
        this.color,
        this.disabledColor,
        required this.image})
      : super(key: key);
  final Function()? onpress;
  final String text;
  final Color? color;
  final String image;
  final Color? disabledColor;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onpress,
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(400, 50),
          side:BorderSide(color: ColorManager.primary)
        ),
        child: Container(
          alignment: Alignment.center,
          child:  Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Image.asset(image),
               SizedBox(
                width: AppSizeWidth.s10,
              ),
               TextUtils(
                  fontWeight: FontWeightManager.semiBold,
                  text: text,
                  color: Colors.black,
                 fontSize: FontSize.s15,

                  ),

            ],
          ),
        ));
  }
}
