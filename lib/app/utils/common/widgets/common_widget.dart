import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonWidget {
  static Future<DateTime?> showDatePickerDialog(DateTime? initial) {
    return showDatePicker(
      context: Get.context!,
      initialDate: initial,
      firstDate: DateTime(1950),
      lastDate: DateTime(DateTime.now().year, 12, 31),
    );
  }

  static loader() {
    return Get.dialog(
      AlertDialog(
        content: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 22,
                width: 22,
                child: CircularProgressIndicator(
                  color: AppColors.accentColor,
                  strokeWidth: 3,
                ),
              ),
              KDimension().kWidth15,
              Text(
                "${StringConst.pleaseWait}...",
                style: Get.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 25,
        ),
      ),
      barrierDismissible: false,
    );
  }

  static errorPopUp(String error) {
    return Get.dialog(
      AlertDialog(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              error,
              textAlign: TextAlign.center,
              style: Get.textTheme.bodyMedium?.copyWith(
                color: AppColors.red,
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

  static Future<dynamic> confirmationPopUp(String msg, Function ontap,
      [bool? isError]) async {
    return Get.defaultDialog(
      title: "",
      radius: 12,
      titleStyle: const TextStyle(height: 0),
      titlePadding: EdgeInsets.zero,
      actions: null,
      middleText: "",
      barrierDismissible: false,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              msg,
              textAlign: TextAlign.center,
              style: Get.textTheme.bodyMedium?.copyWith(
                fontSize: 15,
              ),
            ),
          ),
          KDimension().kHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    isError == true ? AppColors.darkRed : AppColors.accentColor,
                  )),
                  onPressed: () {
                    ontap();
                  },
                  child: const Text(
                    StringConst.yes,
                  ),
                ),
              ),
              KDimension().kWidth10,
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.grey),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    StringConst.cancel,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      contentPadding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 20,
      ),
    );
  }

  static Future<dynamic> responseErrorPopUp(String msg, Function retry) async {
    return Get.defaultDialog(
      title: "",
      radius: 12,
      titleStyle: const TextStyle(height: 0),
      titlePadding: EdgeInsets.zero,
      actions: null,
      middleText: "",
      barrierDismissible: false,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            StringConst.errorText,
            style: Get.textTheme.titleLarge?.copyWith(
              color: AppColors.red,
            ),
          ),
          KDimension().kHeight15,
          Text(msg),
          KDimension().kHeight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    retry();
                  },
                  child: const Text(
                    StringConst.retry,
                  ),
                ),
              ),
              KDimension().kWidth25,
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.grey),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    StringConst.cancel,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      contentPadding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 20,
      ),
    );
  }

  static callSnackBar(String message, [bool? isError, int? durationSec]) {
    return Get.snackbar("", "",
        colorText: isError != true ? AppColors.black : AppColors.lightRed,
        titleText: Container(),
        duration: Duration(
          seconds: durationSec ?? 2,
        ),
        messageText: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (isError == true)
                      Text(
                        StringConst.errorText,
                        style: Get.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: isError != true
                                ? AppColors.white
                                : AppColors.lightRed,
                            letterSpacing: 0),
                      ),
                    if (isError != true) KDimension().kHeight10,
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: Get.textTheme.bodyLarge?.copyWith(
                          color: isError != true
                              ? AppColors.white
                              : AppColors.lightRed,
                          letterSpacing: 0),
                    ),
                    KDimension().kHeight15,
                  ],
                ),
              ),
            ),
          ],
        ),
        borderRadius: 4.0,
        padding: EdgeInsets.zero,
        margin: const EdgeInsets.all(10),
        backgroundColor:
            isError != true ? AppColors.green : AppColors.snackBarBgColor,
        snackPosition: SnackPosition.BOTTOM);
  }
}
