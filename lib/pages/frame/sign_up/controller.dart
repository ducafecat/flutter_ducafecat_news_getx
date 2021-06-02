import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news_getx/common/api/api.dart';
import 'package:flutter_ducafecat_news_getx/common/entity/entity.dart';
import 'package:flutter_ducafecat_news_getx/common/utils/utils.dart';
import 'package:flutter_ducafecat_news_getx/global.dart';
import 'package:get/get.dart';

import 'index.dart';

class SignUpController extends GetxController {
  final state = SignUpState();

  SignUpController();

  // email的控制器
  final TextEditingController emailController = TextEditingController();
  // 密码的控制器
  final TextEditingController passController = TextEditingController();

  // final MyRepository repository;
  // SignUpController({@required this.repository}) : assert(repository != null);

  // 跳转 注册界面
  handleNavSignUp() {}

  // 执行登录操作
  handleSignUp() async {
    // if (!duIsEmail(_emailController.value.text)) {
    //   toastInfo(msg: '请正确输入邮件');
    //   return;
    // }
    // if (!duCheckStringLength(_passController.value.text, 6)) {
    //   toastInfo(msg: '密码不能小于6位');
    //   return;
    // }

    UserLoginRequestEntity params = UserLoginRequestEntity(
      email: emailController.value.text,
      password: duSHA256(passController.value.text),
    );

    UserLoginResponseEntity userProfile = await UserAPI.login(
      params: params,
    );
    Global.saveProfile(userProfile);
  }
}
