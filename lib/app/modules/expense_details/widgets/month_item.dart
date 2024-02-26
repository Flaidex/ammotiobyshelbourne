import 'package:ammotiobyshelbourne/app/modules/expense_details/controllers/expense_details_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/expense_details/model/month_item_list_model.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MonthItem extends GetView<ExpenseDetailsController> {
  const MonthItem({
    super.key,
    required this.item,
    required this.index,
  });
  final MonthItemModel item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.greyShade200,
            boxShadow: const [
              Constants.boxShadow,
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _topSection(),
              _total(),
              _statusSection(),
            ],
          )),
    );
  }

//Top section
  SizedBox _topSection() {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "${item.type?[0].toUpperCase()}${item.type?.substring(1)} ${StringConst.expense}",
              style: Get.textTheme.bodyLarge?.copyWith(
                color: AppColors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            KDimension().kWidth05,
            Text(
              getFormattedDateFromDate(item.incurred),
              style: Get.textTheme.bodySmall?.copyWith(
                color: AppColors.grey,
                fontSize: 11,
              ),
            ),
            const Spacer(),
            if (item.status != StringConst.submittedStatus)
              IconButton(
                onPressed: () => controller.navigateToExpenseDialog(
                  item.type ?? "", //--As Name (Business or Travel)
                  StringConst.view,
                  item.id!,
                ),
                icon: const Icon(
                  Icons.visibility,
                  color: AppColors.blue,
                  size: 22,
                ),
              ),
          ],
        ),
      ),
    );
  }

//Status section
  Container _statusSection() {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.greyShade400,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "${StringConst.status}: ",
            style: Get.textTheme.bodySmall,
          ),
          KDimension().kWidth05,
          Text(
            item.status == StringConst.submittedStatus
                ? StringConst.awaitingApproval
                : "${item.status}",
            style: Get.textTheme.bodyMedium?.copyWith(
              color: controller.filterItemColor(item.status ?? ""),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          if (item.status == StringConst.submittedStatus)
            GestureDetector(
              onTap: () => controller.navigateToExpenseDialog(
                item.type ?? "", //--As Name (Business or Travel)
                StringConst.edit,
                item.id!,
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.darkBlue,
                ),
                child: const Icon(
                  Icons.edit,
                  color: AppColors.white,
                  size: 14,
                ),
              ),
            ),
          if (item.status == StringConst.submittedStatus)
            IconButton(
              onPressed: () => controller.showDeleteConfirmationPopup(
                item.type!,
                item.id!,
                index,
              ),
              icon: const Icon(
                Icons.delete,
                color: AppColors.darkRed,
                size: 22,
              ),
            ),
        ],
      ),
    );
  }

  //Total widget
  Widget _total() {
    return Text(
      "${controller.currencySymbol} ${item.total}",
      style: Get.textTheme.headlineSmall?.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}
