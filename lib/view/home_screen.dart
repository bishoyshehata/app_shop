import 'package:app_shop/resources/color_manager.dart';
import 'package:app_shop/resources/font_manager.dart';
import 'package:app_shop/resources/strings_manager.dart';
import 'package:app_shop/resources/values_manager.dart';
import 'package:app_shop/widgets/app_card.dart';
import 'package:app_shop/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: TextUtils(
            fontWeight: FontWeight.bold,
            text: AppStrings.title,
            fontSize: FontSize.s22,
            color: ColorManager.background),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => AppCard(context),
          separatorBuilder: (context, index)=>   SizedBox(
            height: AppSizeHeight.s8,
          ),
          itemCount: 10),
    );
  }
}
