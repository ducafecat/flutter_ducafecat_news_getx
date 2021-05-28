import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news_getx/pages/frame/welcome/controller.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('WelcomePage')),
        body: SafeArea(child: Text('WelcomeController')));
  }
}
