//Show business confirmation dialog
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showConfirmationMessageDialog(String text) {
  Get.dialog(
    AlertDialog(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: Get.textTheme.bodyLarge?.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          KDimension().kHeight10,
          SizedBox(
            width: 80,
            height: 35,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                Get.back();
              },
              child: const Text(
                StringConst.ok,
              ),
            ),
          ),
        ],
      ),
    ),
    barrierDismissible: false,
  );
}
