import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news_getx/common/values/values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../index.dart';

/// 频道导航
class NewsChannelsWidget extends GetView<MainController> {
  NewsChannelsWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.state.channels == null
        ? Container()
        : Container(
            height: 137.h,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: controller.state.channels.map<Widget>((item) {
                  return Container(
                    width: 70.w,
                    height: 97.h,
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 图标
                          Container(
                            height: 64.w,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    height: 64.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryBackground,
                                      boxShadow: [
                                        Shadows.primaryShadow,
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(32)),
                                    ),
                                    child: Container(),
                                  ),
                                ),
                                Positioned(
                                  left: 10.w,
                                  top: 10.w,
                                  right: 10.w,
                                  child: Image.asset(
                                    "assets/images/channel-${item.code}.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // 标题
                          Text(
                            item.title,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                            style: TextStyle(
                              color: AppColors.thirdElementText,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  );
                }).toList(),
              ),
            ),
          ));
  }
}
