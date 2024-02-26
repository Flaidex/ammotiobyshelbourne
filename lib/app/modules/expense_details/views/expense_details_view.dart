import 'package:ammotiobyshelbourne/app/modules/expense_details/model/month_item_list_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expense_details/widgets/month_item.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/custom_clipper/screen_header_clipper.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/loader.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../controllers/expense_details_controller.dart';

class ExpenseDetailsView extends GetView<ExpenseDetailsController> {
  ExpenseDetailsView({Key? key}) : super(key: key);
  @override
  final ExpenseDetailsController controller =
      Get.put(ExpenseDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _topSection(),
          OrientationLayoutBuilder(
            portrait: (context) => KDimension().kHeight05,
            landscape: (context) => const SizedBox(
              height: 0,
            ),
          ),
          _body(context),
        ],
      ),
    );
  }

  //Body section
  Widget _body(BuildContext context) {
    return Obx(
      () => controller.loading
          ? const Expanded(
              child: Loader(
                size: 40,
                color: AppColors.grey,
              ),
            )
          : controller.monthItemList.isEmpty
              ? _emptyWidget()
              : _content(),
    );
  }

//Content
  Expanded _content() {
    return Expanded(
      child: OrientationLayoutBuilder(
        portrait: (context) => _gridView(1, controller.monthItemList),
        landscape: (context) => _gridView(2, controller.monthItemList),
      ),
    );
  }

//Empty widget
  Expanded _emptyWidget() {
    return const Expanded(
      child: Center(
        child: Text(
          StringConst.noExpenseData,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  //Month Item GridView
  Widget _gridView(
    int crossAxisCount,
    List<MonthItemModel> list,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
          padding: const EdgeInsets.only(bottom: 20),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: 3.6 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 25,
          ),
          itemCount: list.length,
          itemBuilder: (ctx, i) {
            return MonthItem(
              item: list[i],
              index: i,
            );
          }),
    );
  }

  //Top section
  ClipPath _topSection() {
    return ClipPath(
      clipper: ScreenHeaderClipper(),
      child: Container(
        height: 80,
        width: Get.width,
        color: AppColors.primaryColor,
        child: Align(
          alignment: Alignment.topCenter,
          child: Wrap(
            runSpacing: 10,
            spacing: 10,
            children: [
              _buildArrowSection(),
            ],
          ),
        ),
      ),
    );
  }

  //build arrow section
  Widget _buildArrowSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildArrow(
            Icons.arrow_back_ios,
            () => controller.changeMonth(StringConst.backward),
          ),
          _monthName(),
          _buildArrow(
            Icons.arrow_forward_ios,
            () => controller.changeMonth(StringConst.forward),
          ),
        ],
      ),
    );
  }

  //Build month name
  Widget _monthName() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.lighterPrimaryColor,
      ),
      alignment: Alignment.center,
      child: Obx(
        () => Text(
          getMonthName(controller.monthId),
          style: Get.textTheme.bodyLarge?.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

//Build Arrow
  Widget _buildArrow(
    IconData icon,
    Function()? onPressd,
  ) {
    return GestureDetector(
      onTap: onPressd,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }

  //AppBar
  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.accentColor,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
      title: Text(
        "${StringConst.expenses} ${controller.year}",
        style: Get.textTheme.headlineMedium?.copyWith(
          color: AppColors.white,
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.white,
      ),
      actions: [
        _filterPopup(),
      ],
    );
  }

//Build Filter popup
  Widget _filterPopup() {
    return PopupMenuButton(
      onSelected: (String val) => controller.filterItemSelect(val),
      icon: const Icon(
        Icons.filter_list_rounded,
        color: AppColors.white,
        size: 25,
      ),
      itemBuilder: (_) => Constants.filterItemList
          .asMap()
          .entries
          .map((MapEntry<int, String> entry) {
        return PopupMenuItem(
          value: Constants.filteringTypeList[entry.key],
          child: Obx(
            () => _buildMenuItem(
              entry.value,
              controller.getMonthItemListByStatus(
                Constants.filteringTypeList[entry.key],
              ),
              entry.key,
            ),
          ),
        );
      }).toList(),
    );
  }

  //build filter item
  Widget _buildMenuItem(
    String name,
    List<MonthItemModel> list,
    int index,
  ) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Constants.filteringTypeList[index] ==
                  controller.currentSelectedItem
              ? AppColors.greyShade300
              : AppColors.transparent,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text(name),
            KDimension().kWidth05,
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.filterItemColor(name),
              ),
              alignment: Alignment.center,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    '${list.length}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
