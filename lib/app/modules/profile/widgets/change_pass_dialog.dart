import 'package:ammotiobyshelbourne/app/modules/profile/controllers/profile_controller.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/text_form_field_widget.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordDialog extends GetView<ProfileController> {
  ChangePasswordDialog({super.key});

  @override
  final ProfileController controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.greyShade200,
      title: _title(),
      content: _content(context),
      actions: [
        _cancelBtn(),
        KDimension().kWidth05,
        _saveBtn(context),
      ],
    );
  }

//----------Title
  SizedBox _title() {
    return SizedBox(
      height: 40,
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringConst.changePassword,
            style: Get.textTheme.headlineSmall,
          ),
          IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Get.back();
              })
        ],
      ),
    );
  }

//------------Content
  Widget _content(BuildContext context) {
    return Form(
      key: controller.changePassFormKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _label(StringConst.currentPassword),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.currentPassController,
              onchanged: (String? val) {},
              hintText: StringConst.currentPassword,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.changePasswordFieldValidator(
                      val ?? "", StringConst.currentPassword),
            ),
            KDimension().kHeight15,
            _label(StringConst.newPassword),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.newPassController,
              onchanged: (String? val) {},
              hintText: StringConst.newPassword,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.changePasswordFieldValidator(
                      val ?? "", StringConst.newPassword),
            ),
            KDimension().kHeight15,
            _label(StringConst.confirmPassword),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.confirmPassController,
              onchanged: (String? val) {},
              hintText: StringConst.confirmPassword,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.changePasswordFieldValidator(
                      val ?? "", StringConst.confirmPassword),
            ),
          ],
        ),
      ),
    );
  }

  //build label
  Widget _label(String label) {
    return Text(
      "$label*",
      style: Get.textTheme.bodyMedium?.copyWith(
        color: AppColors.darkGrey,
      ),
    );
  }

  TextButton _saveBtn(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.greyShade300,
      ),
      child: Container(
        width: 80,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            StringConst.save,
            style: Get.textTheme.bodyLarge?.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
      onPressed: () {
        controller.callChangePassApi();
      },
    );
  }

  TextButton _cancelBtn() {
    return TextButton(
      onPressed: () {
        Get.back();
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.greyShade300,
      ),
      child: Container(
        width: 80,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                StringConst.cancel,
                style: Get.textTheme.bodyLarge?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
