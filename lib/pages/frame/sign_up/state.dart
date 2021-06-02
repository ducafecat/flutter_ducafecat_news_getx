import 'package:get/get.dart';

class SignUpState {
  /// 响应变量用 get set 包下

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;

  // SignUpState() {}
}
