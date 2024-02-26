import 'package:ammotiobyshelbourne/app/modules/payslips/model/payslips_list_model.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/custom_clipper/screen_header_clipper.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/loader.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/year_dropdown.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payslips_controller.dart';

class PayslipsView extends GetView<PayslipsController> {
  PayslipsView({Key? key}) : super(key: key);
  @override
  final PayslipsController controller = Get.put(PayslipsController());
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
          filterFn: (val) => controller.filterPayslips(val ?? ""),
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
        columnWidths: Constants.payslipsTableHeaderRatio,
        children: [
          TableRow(
            decoration: const BoxDecoration(color: AppColors.primaryColor),
            children: [
              _buildTableHeader(StringConst.date),
              _buildTableHeader(StringConst.grossTaxablePay),
              _buildTableHeader(StringConst.netPayment),
              _buildTableHeader(""),
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
                  columnWidths: Constants.payslipsTableHeaderRatio,
                  children: List.generate(
                    controller.payslipsList.length,
                    (index) => _tableRow(
                      controller.payslipsList[index],
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
  TableRow _tableRow(PayslipsModel item) {
    return TableRow(
      decoration: const BoxDecoration(color: AppColors.white),
      children: [
        _buildTableItem(
          getFormattedDateFromDate(item.date),
        ),
        _buildTableItem("${item.gross_taxable_pay ?? ""}"),
        _buildTableItem("${item.net_payment ?? 0.0}"),
        _viewBtn(item.id),
      ],
    );
  }

//View Button
  InkWell _viewBtn(int? id) {
    return InkWell(
      onTap: () => openFileOnBrowser(StringConst.payslips, id),
      child: Container(
        height: 50,
        alignment: Alignment.center,
        child: Container(
          height: 25,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Center(
            child: Text(
              StringConst.view,
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
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
