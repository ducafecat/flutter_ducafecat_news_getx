import 'package:flutter_ducafecat_news_getx/common/apis/apis.dart';
import 'package:flutter_ducafecat_news_getx/common/entities/entities.dart';
import 'package:get/get.dart';

import 'index.dart';

class MainController extends GetxController {
  MainController();

  /// 响应式成员变量

  final state = MainState();

  /// 成员变量

  /// 方法

  // 拉取数据
  asyncLoadAllData() async {
    state.categories = await NewsAPI.categories(
      cacheDisk: true,
    );
    state.channels = await NewsAPI.channels(
      cacheDisk: true,
    );
    state.newsRecommend = await NewsAPI.newsRecommend(
      cacheDisk: true,
    );
    state.newsPageList = await NewsAPI.newsPageList(
      cacheDisk: true,
    );

    state.selCategoryCode = state.categories.first.code;
  }

  // 拉取推荐、新闻
  asyncLoadNewsData(
    categoryCode, {
    bool refresh = false,
  }) async {
    state.selCategoryCode = categoryCode;
    state.newsRecommend = await NewsAPI.newsRecommend(
      params: NewsRecommendRequestEntity(categoryCode: categoryCode),
      refresh: refresh,
      cacheDisk: true,
    );
    state.newsPageList = await NewsAPI.newsPageList(
      params: NewsPageListRequestEntity(categoryCode: categoryCode),
      refresh: refresh,
      cacheDisk: true,
    );
  }

  /// 事件

  /// 生命周期

  /// 初始
  @override
  void onInit() {
    super.onInit();
  }

  /// 可 async 拉取数据
  /// 可触发展示交互组件
  /// onInit 之后
  @override
  void onReady() {
    super.onReady();
    asyncLoadAllData();
  }

  /// 关闭页面
  /// 可以缓存数据，关闭各种控制器
  /// dispose 之前
  @override
  void onClose() {
    super.onClose();
  }

  /// 被释放
  /// 手动 释放各种内存资源
  @override
  void dispose() {
    super.dispose();
  }
}
