import 'package:ammotiobyshelbourne/app/utils/common/custom_clipper/getstarted_portrait_clipper.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/assets.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

//Build Body
  Column _body(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              Assets.images.getStarted,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        _buildBottomSection(context),
      ],
    );
  }

//Build bottom section
  Expanded _buildBottomSection(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ClipPath(
        clipper: GetStartedPortraitClipper(),
        child: Container(
          height: Get.height * 0.6,
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: AppColors.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KDimension().kHeight20,
              Image.asset(
                Assets.images.ammotio,
                height: getValueForScreenType(
                  context: context,
                  mobile: 60,
                  tablet: 90,
                ),
                width: getValueForScreenType(
                  context: context,
                  mobile: 220,
                  tablet: 270,
                ),
                fit: BoxFit.cover,
              ),
              Text(
                StringConst.getStartedSubText,
                style: Get.textTheme.bodySmall?.copyWith(
                  color: AppColors.white,
                ),
              ),
              KDimension().kHeight40,
              _buildLetsStartBtn(),
            ],
          ),
        ),
      ),
    );
  }

  //Build Button
  ElevatedButton _buildLetsStartBtn() {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll<Color>(AppColors.blue),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        elevation: MaterialStateProperty.all(5),
        shadowColor: MaterialStateProperty.all<Color>(Colors.grey),
      ),
      onPressed: () => controller.getStarted(),
      child: SizedBox(
        height: 55,
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              StringConst.letsStart,
              style: Get.textTheme.headlineMedium?.copyWith(
                color: AppColors.white,
              ),
            ),
            KDimension().kWidth10,
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
