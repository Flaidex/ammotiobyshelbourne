import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/data-sources/home_datasource.dart';
import 'package:ammotiobyshelbourne/app/modules/bank_statement/model/bank_statements_list_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/expense_model.dart';
import 'package:ammotiobyshelbourne/app/modules/overview_screen/model/overview_model.dart';
import 'package:ammotiobyshelbourne/app/modules/payslips/model/payslips_list_model.dart';
import 'package:ammotiobyshelbourne/app/modules/sales_invoice/model/sales_invoice_list_model.dart';
import 'package:ammotiobyshelbourne/app/modules/working_hours/model/working_hours_list_model.dart';
import 'package:get/get.dart';

class HomeRepository {
  final HomeDataSource _homeDataSource = Get.put(HomeDataSource());
  //Summary Data
  Future<OverviewModel> summaryData() async {
    try {
      final OverviewModel response = await _homeDataSource.summaryData();
      return response;
    } catch (e) {
      log(e.toString(), error: "HomeRepository");
      rethrow;
    }
  }

  //Sales invoice Data
  Future<SalesInvoiceListModel> salesInvoiceData() async {
    try {
      final SalesInvoiceListModel response =
          await _homeDataSource.salesInvoiceData();
      return response;
    } catch (e) {
      log(e.toString(), error: "HomeRepository");
      rethrow;
    }
  }

  //Payslips Data
  Future<PayslipsListModel> payslipsData() async {
    try {
      final PayslipsListModel response = await _homeDataSource.payslipsData();
      return response;
    } catch (e) {
      log(e.toString(), error: "HomeRepository");
      rethrow;
    }
  }

  //Bank Statements Data
  Future<BankStatementsListModel> bankStatementsData() async {
    try {
      final BankStatementsListModel response =
          await _homeDataSource.bankStatementsData();
      return response;
    } catch (e) {
      log(e.toString(), error: "HomeRepository");
      rethrow;
    }
  }

  //Working hours Data
  Future<WorkingHoursListModel> workingHoursData() async {
    try {
      final WorkingHoursListModel response =
          await _homeDataSource.workingHoursData();
      return response;
    } catch (e) {
      log(e.toString(), error: "HomeRepository");
      rethrow;
    }
  }

  //Expense Data
  Future<List<ExpenseModel>> expenseData() async {
    try {
      final List<ExpenseModel> response = await _homeDataSource.expenseData();
      return response;
    } catch (e) {
      log(e.toString(), error: "HomeRepository");
      rethrow;
    }
  }
}
