import 'package:flutter_ducafecat_news_getx/common/entities/entities.dart';
import 'package:get/get.dart';

class MainState {
  // 分类
  var _categories = Rx<List<CategoryResponseEntity>?>(null);
  set categories(value) => _categories.value = value;
  get categories => _categories.value;

  // 新闻翻页
  var _newsPageList = Rx<NewsPageListResponseEntity?>(null);
  set newsPageList(value) => _newsPageList.value = value;
  get newsPageList => _newsPageList.value;
  void appendNewsPageList(NewsPageListResponseEntity value) {
    if (_newsPageList.value != null) {
      _newsPageList.value!.items?.addAll(value.items!.toList());
    }
  }

  // 新闻推荐
  var _newsRecommend = Rx<NewsItem?>(null);
  set newsRecommend(value) => _newsRecommend.value = value;
  get newsRecommend => _newsRecommend.value;

  // 频道
  var _channels = Rx<List<ChannelResponseEntity>?>(null);
  set channels(value) => _channels.value = value;
  get channels => _channels.value;

  // 选中的分类Code
  var _selCategoryCode = "".obs;
  set selCategoryCode(value) => _selCategoryCode.value = value;
  get selCategoryCode => _selCategoryCode.value;
}
