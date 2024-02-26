import 'package:ammotiobyshelbourne/app/modules/home/controllers/home_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/overview_screen/widgets/overview_item.dart';
import 'package:ammotiobyshelbourne/app/utils/assets.dart';
import 'package:ammotiobyshelbourne/app/utils/common/custom_clipper/screen_header_clipper.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/loader.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../controllers/overview_screen_controller.dart';

class OverviewScreenView extends GetView<OverviewScreenController> {
  OverviewScreenView({Key? key}) : super(key: key);
  @override
  final OverviewScreenController controller =
      Get.put(OverviewScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _topSection(),
          OrientationLayoutBuilder(
            portrait: (context) => KDimension().kHeight10,
            landscape: (context) => const SizedBox(
              height: 0,
            ),
          ),
          _body(),
        ],
      ),
    );
  }

  //Top section
  ClipPath _topSection() {
    return ClipPath(
      clipper: ScreenHeaderClipper(),
      child: Container(
        height: 100,
        width: Get.width,
        color: AppColors.primaryColor,
        child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            Assets.images.ammotio,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

//Body section
  Widget _body() {
    return Expanded(
      child: Obx(() => controller.loading
          ? const Loader(
              size: 40,
              color: AppColors.grey,
            )
          : SingleChildScrollView(
              child: _bodyContent(),
            )),
    );
  }

//Body content
  Wrap _bodyContent() {
    return Wrap(
      spacing: 20,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        OverviewItem(
          AppColors.payslipColor,
          Assets.images.payslip,
          getFormattedDate(
            controller.overviewData.payslip?.date ?? "",
          ),
          StringConst.lastPayslip,
          controller.getPriceWithCurrency(
            controller.overviewData.payslip?.value ?? 0,
          ),
          () => Get.find<HomeController>().changePage(3),
        ),
        OverviewItem(
          AppColors.workHoursColor,
          Assets.images.workHours,
          getFormattedDate(
            controller.overviewData.working_hours?.date ?? "",
          ),
          StringConst.lastWorkingHours,
          "${controller.overviewData.working_hours?.value ?? 0} hr",
          () => Get.find<HomeController>().changePage(4),
        ),
        OverviewItem(
          AppColors.invoiceColor,
          Assets.images.invoice,
          getFormattedDate(
            controller.overviewData.invoice?.date ?? "",
          ),
          StringConst.lastInvoice,
          controller.getPriceWithCurrency(
            controller.overviewData.invoice?.value ?? 0,
          ),
          () => Get.find<HomeController>().changePage(1),
        ),
        OverviewItem(
          AppColors.expensesColor,
          Assets.images.expenses,
          "",
          StringConst.lastExpenses,
          controller.getPriceWithCurrency(
            controller.overviewData.expenses?.value ?? 0,
          ),
          () => Get.find<HomeController>().changePage(2),
        ),
      ],
    );
  }
}
