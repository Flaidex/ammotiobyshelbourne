import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({Key? key}) : super(key: key);
  @override
  final SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      color: AppColors.primaryColor,
      child: const Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
