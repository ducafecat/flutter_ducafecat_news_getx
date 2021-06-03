import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class MainPage extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          NewsCategoriesWidget(),
          Divider(height: 1),
          NewsRecommendWidget(),
          Divider(height: 1),
          NewsChannelsWidget(),
          Divider(height: 1),
          NewsListWidget(),
          Divider(height: 1),
          NewsletterWidget(),
        ],
      ),
    );
  }
}
