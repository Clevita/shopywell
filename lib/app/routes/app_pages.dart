import 'package:get/get.dart';

import '../modules/authentication/bindings/authentication_binding.dart';
import '../modules/authentication/views/authentication_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/other_splashscreens/bindings/other_splashscreens_binding.dart';
import '../modules/other_splashscreens/views/other_splashscreens_view.dart';
import '../modules/shoppingbag/bindings/shoppingbag_binding.dart';
import '../modules/shoppingbag/views/shoppingbag_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';
import '../modules/startepage/bindings/startepage_binding.dart';
import '../modules/startepage/views/startepage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => const SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.OTHER_SPLASHSCREENS,
      page: () => const OtherSplashscreensView(),
      binding: OtherSplashscreensBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => const AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.STARTEPAGE,
      page: () => const StartepageView(),
      binding: StartepageBinding(),
    ),
    GetPage(
      name: _Paths.SHOPPINGBAG,
      page: () => const ShoppingbagView(),
      binding: ShoppingbagBinding(),
    ),
  ];
}
