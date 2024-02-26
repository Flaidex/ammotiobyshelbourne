import 'package:ammotiobyshelbourne/app/modules/expenses/model/expense_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/widgets/expense_item.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/custom_clipper/screen_header_clipper.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/loader.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/year_dropdown.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../controllers/expenses_controller.dart';

class ExpensesView extends GetView<ExpensesController> {
  ExpensesView({Key? key}) : super(key: key);
  @override
  final ExpensesController controller = Get.put(ExpensesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return Obx(() => controller.loading
        ? const Expanded(
            child: Loader(
              size: 40,
              color: AppColors.grey,
            ),
          )
        : Expanded(
            child: OrientationLayoutBuilder(
              portrait: (context) => _gridView(2, controller.expensesList),
              landscape: (context) => _gridView(4, controller.expensesList),
            ),
          ));
  }

  //Expense GridView
  Widget _gridView(
    int crossAxisCount,
    List<ExpenseModel> list,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: 2.5 / 3,
            crossAxisSpacing: 15,
          ),
          itemCount: list.length,
          itemBuilder: (ctx, i) {
            return ExpenseItem(
              item: list[i],
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
              _addNewDropdownWidget(),
              KDimension().kWidth20,
              _yearDropdownWidget(),
            ],
          ),
        ),
      ),
    );
  }

//Add new Ddopdown widget
  Container _addNewDropdownWidget() {
    return Container(
      height: 35,
      width: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.lightPrimaryColor),
      alignment: Alignment.center,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          dropdownColor: Colors.black,
          alignment: AlignmentDirectional.center,
          // value: selectedYear.isEmpty ? null : selectedYear,
          hint: Text(
            StringConst.addNew,
            style: Get.textTheme.bodyLarge?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: Get.textTheme.bodyMedium?.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
          icon: const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.white,
            ),
          ),
          onChanged: (val) => controller.navigateToExpense(val ?? ""),
          items: Constants.addNewList.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(
                value,
                textAlign: TextAlign.center,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

//Year Dropdown widget
  Container _yearDropdownWidget() {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.lightPrimaryColor),
      alignment: Alignment.center,
      child: Obx(
        () => YearDropdown(
          list: controller.yearList,
          selectedYear: controller.selectedYear,
          filterFn: (val) => controller.filterExpensesByYear(val ?? ""),
        ),
      ),
    );
  }

//
}
