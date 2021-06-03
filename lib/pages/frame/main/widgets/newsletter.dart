import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news_getx/common/values/values.dart';
import 'package:flutter_ducafecat_news_getx/common/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../index.dart';

/// 邮件订阅
class NewsletterWidget extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.w),
      child: Column(
        children: <Widget>[
          // newsletter
          Row(
            children: <Widget>[
              Text(
                'Newsletter',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.thirdElement,
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: AppColors.thirdElementText,
                  size: 17.sp,
                ),
                onPressed: () {},
              ),
            ],
          ),

          // email
          inputEmailEdit(
            marginTop: 19,
            keyboardType: TextInputType.emailAddress,
            hintText: "Email",
            isPassword: false,
            controller: null,
          ),

          // btn subcrible
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: btnFlatButtonWidget(
              onPressed: () {},
              width: 335.w,
              height: 44.h,
              fontWeight: FontWeight.w600,
              title: "Subscribe",
            ),
          ),

          // disc
          Container(
            margin: EdgeInsets.only(top: 29.h),
            width: 261.w,
            child: Text.rich(TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'By clicking on Subscribe button you agree to accept',
                style: new TextStyle(
                  color: AppColors.thirdElementText,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
              TextSpan(
                text: ' Privacy Policy',
                style: new TextStyle(
                  color: AppColors.secondaryElementText,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    toastInfo(msg: 'Privacy Policy');
                  },
              ),
            ])),
          ),
        ],
      ),
    );
  }
}
