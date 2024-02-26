import 'package:ammotiobyshelbourne/app/modules/bank_statement/model/bank_statements_list_model.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/custom_clipper/screen_header_clipper.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/loader.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/year_dropdown.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bank_statement_controller.dart';

class BankStatementView extends GetView<BankStatementController> {
  BankStatementView({Key? key}) : super(key: key);
  @override
  final BankStatementController controller = Get.put(BankStatementController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _topSection(),
          _tableHeader(),
          _tableData(),
        ],
      ),
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
          child: _dropdownWidget(),
        ),
      ),
    );
  }

//Dropdown widget
  Container _dropdownWidget() {
    return Container(
      height: 35,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.lightPrimaryColor),
      alignment: Alignment.center,
      child: Obx(
        () => YearDropdown(
          list: controller.yearList,
          selectedYear: controller.selectedYear,
          filterFn: (val) => controller.filterBankStatements(val ?? ""),
        ),
      ),
    );
  }

  //table header
  Widget _tableHeader() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Table(
        border: TableBorder.all(
          width: 1,
          color: Colors.grey,
        ),
        columnWidths: Constants.bankStatementsTableHeaderRatio,
        children: [
          TableRow(
            decoration: const BoxDecoration(color: AppColors.primaryColor),
            children: [
              _buildTableHeader(StringConst.date),
              _buildTableHeader(StringConst.details),
              _buildTableHeader(StringConst.debit),
              _buildTableHeader(StringConst.credit),
              _buildTableHeader(StringConst.balance),
            ],
          ),
        ],
      ),
    );
  }

  //Build table list
  Widget _tableData() {
    return Expanded(
      child: Obx(() => controller.loading
          ? const Center(
              child: Loader(
                size: 40,
                color: AppColors.grey,
              ),
            )
          : Container(
              width: Get.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Table(
                  border: TableBorder.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: Constants.bankStatementsTableHeaderRatio,
                  children: List.generate(
                    controller.bankStatementsList.length,
                    (index) => _tableRow(
                      controller.bankStatementsList[index],
                    ),
                  ),
                ),
              ),
            )),
    );
  }

//Build table header
  Widget _buildTableHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Text(
        text.toUpperCase(),
        textAlign: TextAlign.center,
        style: Get.textTheme.bodyMedium?.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

//Build table row
  TableRow _tableRow(BankStatementsModel item) {
    return TableRow(
      decoration: const BoxDecoration(color: AppColors.white),
      children: [
        _buildTableItem(
          getFormattedDateFromDate(item.date),
        ),
        _buildTableItem(item.details ?? ""),
        _buildTableItem("${item.debit ?? 0.0}"),
        _buildTableItem("${item.credit ?? 0.0}"),
        _buildTableItem("${item.balance ?? 0.0}"),
      ],
    );
  }

//Build table item
  Widget _buildTableItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 3,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Get.textTheme.bodyMedium?.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
