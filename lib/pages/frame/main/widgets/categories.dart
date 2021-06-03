import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news_getx/common/values/values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../index.dart';

/// 分类导航
class NewsCategoriesWidget extends GetView<MainController> {
  NewsCategoriesWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.state.categories == null
          ? Container()
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: controller.state.categories.map<Widget>((item) {
                  return Container(
                    alignment: Alignment.center,
                    height: 52.h,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      child: Text(
                        item.title,
                        style: TextStyle(
                          color: controller.state.selCategoryCode == item.code
                              ? AppColors.secondaryElementText
                              : AppColors.primaryText,
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        // 拉取数据
                        controller.asyncLoadNewsData(item.code);
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
    );
  }
}
