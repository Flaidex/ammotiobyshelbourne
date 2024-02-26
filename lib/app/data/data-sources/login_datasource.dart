import 'dart:developer';

import 'package:ammotiobyshelbourne/app/modules/login/model/login_model.dart';
import 'package:ammotiobyshelbourne/app/modules/overview_screen/model/overview_model.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../services/login_service.dart';

class LoginDataSource {
  final LoginServices _loginService = Get.put(LoginServices());
  //login api
  Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _loginService.login(
        email: email,
        password: password,
      );

      final LoginModel model = LoginModel.fromJson(response.data);
      return model;
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        if (e.response!.statusCode == 401) {
          throw StringConst.wrongEmailOrPassword;
        } else {
          rethrow;
        }
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
    }
  }

  //Summary Data
  Future<OverviewModel> summaryData() async {
    try {
      final response = await _loginService.summaryData();
      if (response.statusCode == 200) {
        final OverviewModel model = OverviewModel.fromJson(response.data);
        return model;
      } else {
        throw StringConst.somethingWentWrong;
      }
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        rethrow;
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
    }
  }
}
