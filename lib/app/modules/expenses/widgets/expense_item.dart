import 'package:ammotiobyshelbourne/app/modules/expenses/controllers/expenses_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/expense_model.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpenseItem extends GetView<ExpensesController> {
  const ExpenseItem({super.key, required this.item});
  final ExpenseModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.goToExpenseMonthDetails(item.month),
      child: Container(
          margin: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.greyShade300,
            boxShadow: const [
              Constants.boxShadow,
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _monthName(),
              _midContent(context),
              _bottomSection(),
            ],
          )),
    );
  }

//Bottom section
  Container _bottomSection() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        color: AppColors.greyShade400,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _bottomItem(
            AppColors.black,
            controller.getPriceWithCurrency(item.rejected ?? 0),
          ),
          _bottomItem(
            AppColors.blue,
            controller.getPriceWithCurrency(item.deleted ?? 0),
          ),
        ],
      ),
    );
  }

  //Bottom item
  Widget _bottomItem(
    Color dotColor,
    String value,
  ) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: dotColor,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        KDimension().kWidth05,
        Text(
          value,
          style: Get.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

//Mid content
  Column _midContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          controller.getPriceWithCurrency(item.total ?? 0),
          style: Get.textTheme.headlineSmall,
        ),
        Text(
          controller.getPriceWithCurrency(item.total ?? 0),
          style: Get.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

//Get month name
  Container _monthName() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Colors.grey[400]),
      alignment: Alignment.center,
      child: Text(
        getMonthName(item.month),
        style: Get.textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
