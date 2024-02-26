import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/app_bar.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/app_drawer.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Obx(
          () => Text(
            Constants.headerList[controller.currentPageIndex],
            style: Get.textTheme.headlineMedium?.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
      drawer: const AppDrawer(),
      body: Obx(
        () => controller.pages[controller.currentPageIndex].page(),
      ),
    );
  }
}
