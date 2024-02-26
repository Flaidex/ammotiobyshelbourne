// ignore_for_file: constant_identifier_names

import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/repositorys/expense_repository.dart';
import 'package:ammotiobyshelbourne/app/modules/expense_details/model/month_item_list_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/controllers/expenses_controller.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/common_widget.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpenseDetailsController extends GetxController {
  final Map<String, dynamic> _arguments = Get.arguments;
  final RxBool _loading = false.obs;
  final RxString _year = "".obs;
  final RxInt _monthId = 0.obs;
  final RxString _currencySymbol = "".obs;
  final RxString _currentSelectedItem = "".obs;
  final RxList<MonthItemModel> _monthItemListFinal = <MonthItemModel>[].obs;
  final RxList<MonthItemModel> _monthItemList = <MonthItemModel>[].obs;

  //Getter
  Map<String, dynamic> get arguments => _arguments;
  bool get loading => _loading.value;
  String get year => _year.value;
  int get monthId => _monthId.value;
  String get currencySymbol => _currencySymbol.value;
  String get currentSelectedItem => _currentSelectedItem.value;
  List<MonthItemModel> get monthItemListFinal => [..._monthItemListFinal];
  List<MonthItemModel> get monthItemList => [..._monthItemList];

  //Setter
  set setYear(String val) => _year.value = val;
  set setMonthId(int val) => _monthId.value = val;

  void removeMonthItemFinalItemByIndex(int index) {
    final list = _monthItemListFinal.toList();
    list.removeAt(index);
    _monthItemListFinal.value = list;
  }

  void removeMonthItemItemByIndex(int index) {
    final list = _monthItemList.toList();
    list.removeAt(index);
    _monthItemList.value = list;
  }

  @override
  void onInit() async {
    _year.value = arguments[StringConst.year] ?? "";
    _monthId.value = arguments[StringConst.monthId];
    _currencySymbol.value = await getCurrencySymbol();

    await callExpenseMonthDataApi();

    super.onInit();
  }

  //Expense repository
  final ExpenseRepository _expenseRepository = Get.put(ExpenseRepository());

  //-------Expense controller
  final ExpensesController _expensesController = Get.find<ExpensesController>();

  //!----------------(Call expense month data api)
  Future<void> callExpenseMonthDataApi() async {
    _loading(true);
    try {
      //api called
      final res = await _expenseRepository.expenseMonthData(year, monthId);
      _monthItemListFinal.value = res.items ?? [];

      _monthItemList.value = List.from(_monthItemListFinal);

      _loading(false);
    } catch (e) {
      _loading(false);
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          callExpenseMonthDataApi();
        },
      );
      log(e.toString(), name: "Expense month controller");
    }
  }

  //!----------------(Call expense month item delete api)
  Future<void> callExpenseMonthItemDeleteApi(
    String type,
    int id,
    int index,
  ) async {
    CommonWidget.loader();
    try {
      //api called
      await _expenseRepository.expenseMonthItemDelete(type, id);
      removeMonthItemFinalItemByIndex(index);
      removeMonthItemItemByIndex(index);
      Get.back(); //-----remove loader
      Get.back(); //-----remove delete popup

      CommonWidget.callSnackBar(StringConst.successfullyDeleted);
    } catch (e) {
      Get.back(); //-----remove loader
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          callExpenseMonthItemDeleteApi(
            type,
            id,
            index,
          );
        },
      );
      log(e.toString(), name: "Expense month item delete --controller");
    }
  }

  //Change month
  void changeMonth(
    String type,
  ) async {
    if (type == StringConst.backward) {
      if (_monthId.value != 1) {
        _monthId.value -= 1;
        //------------Call API
        await callExpenseMonthDataApi();
      }
    } else {
      if (_monthId.value != 12) {
        _monthId.value += 1;
        //------------Call API
        await callExpenseMonthDataApi();
      }
    }
  }

  //Filter popup on select
  void filterItemSelect(
    String selectedOption,
  ) {
    _loading(true);
    if (selectedOption == StringConst.businessStatus ||
        selectedOption == StringConst.travelStatus) {
      _monthItemList.value = _monthItemListFinal
          .where((item) => item.type == selectedOption)
          .toList();
    } else {
      _monthItemList.value = _monthItemListFinal
          .where((item) => item.status == selectedOption)
          .toList();
    }

    _currentSelectedItem.value = selectedOption;
    _loading(false);
  }

  //Get MonthItem list by status
  List<MonthItemModel> getMonthItemListByStatus(String status) {
    if (status == StringConst.businessStatus ||
        status == StringConst.travelStatus) {
      return _monthItemListFinal.where((item) => item.type == status).toList();
    } else {
      return _monthItemListFinal
          .where((item) => item.status == status)
          .toList();
    }
  }

  //Set filter item color
  Color filterItemColor(String name) {
    if (name == Constants.filterItemList[0] ||
        name == Constants.filterItemList[1]) {
      return AppColors.darkBlue;
    } else if (name == Constants.filterItemList[2] ||
        name == Constants.filterItemList[3]) {
      return AppColors.darkGreen;
    } else if (name == Constants.filterItemList[4] ||
        name == StringConst.submittedStatus) {
      return AppColors.awaitingTextColor;
    } else {
      return AppColors.darkRed;
    }
  }

  //Show delete confirmation popup
  void showDeleteConfirmationPopup(
    String type,
    int id,
    int index,
  ) {
    CommonWidget.confirmationPopUp(
      StringConst.areUSureTodelete,
      () => callExpenseMonthItemDeleteApi(type, id, index),
      true,
    );
  }

  //Navigate to Expense dialog for edit or view expense
  void navigateToExpenseDialog(
    String name, //--As Name (Business or Travel)
    String type,
    int id,
  ) {
    _expensesController.showExpenseDialogForEditOrView(name, type, id);
  }
}
