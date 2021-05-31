import 'package:flutter_ducafecat_news_getx/pages/frame/sign_in/bindings.dart';
import 'package:flutter_ducafecat_news_getx/pages/frame/sign_in/view.dart';
import 'package:flutter_ducafecat_news_getx/pages/frame/welcome/bindings.dart';
import 'package:flutter_ducafecat_news_getx/pages/frame/welcome/view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),
  ];

  // static final unknownRoute = GetPage(
  //   name: AppRoutes.NotFound,
  //   page: () => NotfoundView(),
  // );

}
