

import 'package:app_shop/view/home_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const homePageScreen = Routes.homePageScreen;

  static final routes = [
    // maintenance
    GetPage(
      name: Routes.homePageScreen,
      page: () => HomePageScreen(),
      // binding: AuthBinding(),
    ),


  ];
}

class Routes {
  static const homePageScreen = '/homePageScreen';

}
