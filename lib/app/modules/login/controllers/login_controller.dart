import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/repositorys/login_repository.dart';
import 'package:ammotiobyshelbourne/app/modules/login/model/login_model.dart';
import 'package:ammotiobyshelbourne/app/routes/app_pages.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/common_widget.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  late SharedPreferences _prefs;
  final Rx<TextEditingController> _emailController =
      TextEditingController().obs;
  final Rx<TextEditingController> _passwordController =
      TextEditingController().obs;
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passFocusNode = FocusNode();
  final RxBool _loading = false.obs;

  final Rx<LoginModel> _loginResData = const LoginModel().obs;

  //Getter
  TextEditingController get emailController => _emailController.value;
  TextEditingController get passwordController => _passwordController.value;
  FocusNode get emailFocusNode => _emailFocusNode;
  FocusNode get passFocusNode => _passFocusNode;

  bool get loading => _loading.value;
  LoginModel get loginResData => _loginResData.value;

  //Login Repository
  final LoginRepository _loginRepository = Get.put(LoginRepository());

  //-------------Email validator
  bool validateEmail(String value) {
    return GetUtils.isEmail(value);
  }

  //!----------------(Call Login api)
  Future<void> callLoginApi() async {
    _loading(true);
    try {
      //validate form field
      validateLoginForm();
      //api called

      _loginResData.value = await _loginRepository.login(
        email: emailController.text,
        password: passwordController.text,
      );
      //----------Store user data
      await storeUserData(_loginResData.value);
      _loading(false);
      //--------------Navigate to home
      navigateToHome();
    } on String catch (e) {
      _loading(false);
      CommonWidget.errorPopUp(e.toString());
    } catch (e) {
      _loading(false);
      CommonWidget.errorPopUp(StringConst.wrongEmailOrPassword);
      log(e.toString(), name: "Login controller");
    }
  }

  //Navigate to home
  void navigateToHome() {
    Get.offNamed(Routes.HOME);
  }

  //validate Login form
  String validateLoginForm() {
    try {
      if (_emailController.value.text.isEmpty) {
        throw StringConst.emailEmptyError;
      } else if (!GetUtils.isEmail(_emailController.value.text)) {
        throw StringConst.kindlyEnterValidEmail;
      } else if (_passwordController.value.text.isEmpty) {
        throw StringConst.passwordEmptyError;
      } else {
        return "";
      }
    } catch (e) {
      rethrow;
    }
  }

//Store user data
  Future<void> storeUserData(LoginModel data) async {
    _prefs = await SharedPreferences.getInstance();

    await _prefs.setString(StringConst.authToken, data.token ?? "");
    await _prefs.setString(StringConst.currency, data.currency ?? "");
  }

  //
}
