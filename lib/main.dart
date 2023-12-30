import 'package:app_shop/view/home_screen.dart';
import 'package:app_shop/resources/theme_manager.dart';
import 'package:app_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Apps Shop',
          theme: getLightThemeData(),
          initialRoute: AppRoutes.homePageScreen,
          getPages: AppRoutes.routes,
        );
      },
    );
  }
}
