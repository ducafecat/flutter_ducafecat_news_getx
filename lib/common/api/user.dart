import 'package:flutter_ducafecat_news_getx/common/entity/entity.dart';
import 'package:flutter_ducafecat_news_getx/common/utils/utils.dart';

/// 用户
class UserAPI {
  /// 登录
  static Future<UserLoginResponseEntity> login({
    UserLoginRequestEntity? params,
  }) async {
    var response = await HttpUtil().post(
      '/user/login',
      data: params?.toJson(),
    );
    return UserLoginResponseEntity.fromJson(response);
  }
}
