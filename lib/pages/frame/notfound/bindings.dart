import 'package:get/get.dart';

import 'controller.dart';

class NotfoundBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotfoundController>(() => NotfoundController());
  }
}
