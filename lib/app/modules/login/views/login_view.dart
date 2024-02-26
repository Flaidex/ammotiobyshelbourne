import 'package:ammotiobyshelbourne/app/utils/common/custom_clipper/screen_header_clipper.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/text_form_field_widget.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/assets.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _body(context),
    );
  }

//Build Body
  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTopSection(context),
          KDimension().kHeight20,
          _buildLogo(),
          KDimension().kHeight20,
          _buildLoginForm(),
          Container(
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            alignment: Alignment.centerRight,
            child: Text(
              StringConst.forgotPassword,
              style: Get.textTheme.bodyMedium?.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildLoginBtn(),
        ],
      ),
    );
  }

//Build Top Section
  Widget _buildTopSection(BuildContext context) {
    return ClipPath(
      clipper: ScreenHeaderClipper(),
      child: Container(
        height: 170,
        width: Get.width,
        padding: EdgeInsets.only(
          left: 20,
          top: MediaQuery.of(context).viewPadding.top,
        ),
        color: AppColors.primaryColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "${StringConst.welcome},",
                style: Get.textTheme.headlineMedium?.copyWith(
                  color: AppColors.white,
                ),
              ),
              Text(
                StringConst.signInToContinue,
                style: Get.textTheme.bodyMedium?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//Build Logo Image
  Widget _buildLogo() {
    return Image.asset(
      Assets.images.logoImage,
      height: 85,
      width: 85,
      fit: BoxFit.cover,
    );
  }

//Build Login Form
  Widget _buildLoginForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _emailTextFormField(),
          KDimension().kHeight10,
          _passwordTextFormField(),
        ],
      ),
    );
  }

  //Build email textForm field
  Widget _emailTextFormField() {
    return CustomTextFormField(
      height: 65,
      controller: controller.emailController,
      onchanged: (String val) {},
      label: StringConst.emailAddress,
      hintText: StringConst.enterEmailAddress,
      inputType: TextInputType.emailAddress,
      inputAction: TextInputAction.next,
      focusNode: controller.emailFocusNode,
      prefixWidget: Icon(
        Icons.email,
        color: controller.emailFocusNode.hasFocus
            ? AppColors.blue
            : AppColors.grey,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
    );
  }

  //Build password textForm field
  Widget _passwordTextFormField() {
    return CustomTextFormField(
      height: 65,
      controller: controller.passwordController,
      onchanged: (String val) {},
      onFiledSubmitted: (String? val) => controller.callLoginApi(),
      label: StringConst.password,
      hintText: StringConst.enterPassword,
      inputType: TextInputType.text,
      inputAction: TextInputAction.done,
      focusNode: controller.passFocusNode,
      prefixWidget: Icon(
        Icons.lock,
        color: controller.emailFocusNode.hasFocus
            ? AppColors.blue
            : AppColors.grey,
      ),
      suffixWidget: Icon(
        Icons.visibility,
        color: controller.emailFocusNode.hasFocus
            ? AppColors.blue
            : AppColors.grey,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
    );
  }

//Build button
  Widget _buildLoginBtn() {
    return InkWell(
      onTap: () => controller.callLoginApi(),
      highlightColor: AppColors.lighterGrey,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        height: 55,
        width: 250,
        decoration: BoxDecoration(
          boxShadow: const [
            Constants.boxShadow,
          ],
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ThreeBounce
            controller.loading
                ? const SpinKitThreeBounce(
                    color: Colors.white,
                  )
                : Text(
                    StringConst.login,
                    textAlign: TextAlign.center,
                    style: Get.textTheme.headlineSmall?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
          ],
        ),
      ),
    );
  }

//
}
