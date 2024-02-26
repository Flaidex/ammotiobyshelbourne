import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/services/home_service.dart';
import 'package:ammotiobyshelbourne/app/modules/bank_statement/model/bank_statements_list_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/expense_model.dart';
import 'package:ammotiobyshelbourne/app/modules/overview_screen/model/overview_model.dart';
import 'package:ammotiobyshelbourne/app/modules/payslips/model/payslips_list_model.dart';
import 'package:ammotiobyshelbourne/app/modules/sales_invoice/model/sales_invoice_list_model.dart';
import 'package:ammotiobyshelbourne/app/modules/working_hours/model/working_hours_list_model.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeDataSource {
  final HomeServices _homeServices = Get.put(HomeServices());

  //Summary Data
  Future<OverviewModel> summaryData() async {
    try {
      final response = await _homeServices.summaryData();
      if (response.statusCode == 200) {
        final OverviewModel model = OverviewModel.fromJson(response.data);
        return model;
      } else {
        throw StringConst.somethingWentWrong;
      }
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        rethrow;
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
    }
  }

  //Sales invoice Data
  Future<SalesInvoiceListModel> salesInvoiceData() async {
    try {
      final response = await _homeServices.salesInvoiceData();
      if (response.statusCode == 200) {
        final SalesInvoiceListModel model =
            SalesInvoiceListModel.fromJson(response.data);
        return model;
      } else {
        throw StringConst.somethingWentWrong;
      }
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        rethrow;
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
    }
  }

  //Payslips Data
  Future<PayslipsListModel> payslipsData() async {
    try {
      final response = await _homeServices.payslipsData();
      if (response.statusCode == 200) {
        final PayslipsListModel model =
            PayslipsListModel.fromJson(response.data);
        return model;
      } else {
        throw StringConst.somethingWentWrong;
      }
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        rethrow;
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
    }
  }

  //Bank Statements Data
  Future<BankStatementsListModel> bankStatementsData() async {
    try {
      final response = await _homeServices.bankStatementsData();
      if (response.statusCode == 200) {
        final BankStatementsListModel model =
            BankStatementsListModel.fromJson(response.data);
        return model;
      } else {
        throw StringConst.somethingWentWrong;
      }
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        rethrow;
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
    }
  }

  //Working hours Data
  Future<WorkingHoursListModel> workingHoursData() async {
    try {
      final response = await _homeServices.workingHoursData();
      if (response.statusCode == 200) {
        final WorkingHoursListModel model =
            WorkingHoursListModel.fromJson(response.data);
        return model;
      } else {
        throw StringConst.somethingWentWrong;
      }
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        rethrow;
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
    }
  }

  //Expense Data
  Future<List<ExpenseModel>> expenseData() async {
    try {
      final response = await _homeServices.expenseData();
      if (response.statusCode == 200) {
        if (response.data != null) {
          Map<String, dynamic> mapData = response.data as Map<String, dynamic>;

          // List to store all ExpenseModel instances
          List<ExpenseModel> allData = [];

          // Parse JSON data into ExpenseModel instances
          mapData.forEach((year, yearData) {
            yearData.forEach((month, monthData) {
              allData.add(ExpenseModel(
                year: int.parse(year),
                month: int.parse(month),
                awaiting: monthData['awaiting'] as num?,
                approved: monthData['approved'] as num?,
                paid: monthData['paid'] as num?,
                rejected: monthData['rejected'] as num?,
                deleted: monthData['deleted'] as num?,
                total: monthData['total'] as num?,
              ));
            });
          });
          return allData;
        } else {
          throw StringConst.somethingWentWrong;
        }
      } else {
        throw StringConst.somethingWentWrong;
      }
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        rethrow;
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
    }
  }
}
