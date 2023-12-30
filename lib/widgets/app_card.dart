
import 'package:app_shop/resources/assets_manager.dart';
import 'package:app_shop/resources/color_manager.dart';
import 'package:app_shop/resources/font_manager.dart';
import 'package:app_shop/resources/values_manager.dart';
import 'package:app_shop/widgets/text_utils.dart';
import 'package:flutter/material.dart';

Widget AppCard(context) {
  return Container(
    height: AppSizeHeight.s80,
    decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.all(Radius.circular(AppSizeHeight.s20))),
    padding: const EdgeInsets.all(AppPadding.p8),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image
            Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .15,
                child: Image.asset(
                 AssetsManager.whatsIcon ,
                )),
            SizedBox(width: AppSizeWidth.s10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
// meal name
                Container(
                  width: MediaQuery.of(context).size.width * .45,
                  child: TextUtils(
                    fontWeight: FontWeightManager.bold,
                    text: "title",
                    fontSize: FontSize.s17,
                    maxLines: 2,
                  ),
                ),

              ],
            ),
          ],
        ),

          PopupMenuButton(itemBuilder:(context)=>[
            PopupMenuItem(child:  Icon(Icons.download),),
            PopupMenuItem(child: Icon(Icons.share),),

              ]
          ),
        // IconButton(
        //
        //   icon: Icon(
        //     Icons.more_horiz,
        //     size: AppSizeHeight.s25,
        //     color: ColorManager.primary,
        //   ),
        //   onPressed: () {
        //     // burgerController.addBurgerToCart(burgerModel);
        //   },
        // )
      ],
    ),
  );
}
