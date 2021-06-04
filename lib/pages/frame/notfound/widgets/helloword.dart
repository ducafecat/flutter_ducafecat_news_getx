import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';

/// hellowrod
class HellowordWidget extends GetView<NotfoundController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() => Text(controller.state.title)),
    );
  }
}
