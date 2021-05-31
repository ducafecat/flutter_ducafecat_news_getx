import 'package:flutter_ducafecat_news_getx/common/routes/app_pages.dart';
import 'package:flutter_ducafecat_news_getx/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();

  WelcomeController();

  // 跳转 注册界面
  handleNavSignIn() {
    Get.offAndToNamed(AppRoutes.SIGN_IN);
  }
}
