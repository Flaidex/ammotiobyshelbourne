import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/data-sources/login_datasource.dart';
import 'package:ammotiobyshelbourne/app/modules/login/model/login_model.dart';
import 'package:get/get.dart';

class LoginRepository {
  final LoginDataSource _loginDataSource = Get.put(LoginDataSource());

  Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final LoginModel response = await _loginDataSource.login(
        email: email,
        password: password,
      );
      return response;
    } catch (e) {
      log(e.toString(), error: "LoginRepository");
      rethrow;
    }
  }
}
