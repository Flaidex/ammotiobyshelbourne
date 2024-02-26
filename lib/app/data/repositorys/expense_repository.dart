import 'dart:developer';
import 'dart:io';

import 'package:ammotiobyshelbourne/app/data/data-sources/expense_datasource.dart';
import 'package:ammotiobyshelbourne/app/modules/expense_details/model/month_item_list_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-expense-record/business_expense_record_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-image/business_image_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-information/business_information_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/new-expense-response/new_expense_response_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/travel-expense-record/travel_expense_record_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/travel-information/travel_information_model.dart';
import 'package:get/get.dart';

class ExpenseRepository {
  final ExpenseDataSource _expenseDataSource = Get.put(ExpenseDataSource());

  //Travel expense information api
  Future<TravelInformationModel> travelInformationData() async {
    try {
      final TravelInformationModel response =
          await _expenseDataSource.travelInformationData();
      return response;
    } catch (e) {
      log(e.toString(), error: "ExpenseRepository Travel information");
      rethrow;
    }
  }

  //Get Travel expense data by id api
  Future<TravelExpenseRecordModel> travelExpenseDataById(
    int id,
  ) async {
    try {
      final TravelExpenseRecordModel response =
          await _expenseDataSource.travelExpenseDataById(id);
      return response;
    } catch (e) {
      log(e.toString(), error: "ExpenseRepository Travel expense data by id");
      rethrow;
    }
  }

  //upload new Travel expense data api
  Future<NewExpenseResponseModel> uploadNewTravelExpenseData(
    String incurred,
    String makeModel,
    String client,
    String endLocation,
    int? engineId,
    int locationId,
    String motorDistance,
    String motorEndLocation,
    String motorStartLocation,
    String nights,
    String purpose,
    String startLocation,
    String netSubsistence,
    int typeId,
    bool useCar,
  ) async {
    try {
      final NewExpenseResponseModel response =
          await _expenseDataSource.uploadNewTravelExpenseData(
        incurred,
        makeModel,
        client,
        endLocation,
        engineId,
        locationId,
        motorDistance,
        motorEndLocation,
        motorStartLocation,
        nights,
        purpose,
        startLocation,
        netSubsistence,
        typeId,
        useCar,
      );
      return response;
    } catch (e) {
      log(e.toString(), error: "ExpenseRepository upload new travel expense");
      rethrow;
    }
  }

  //upload edited Travel expense data api
  Future<void> uploadEditedTravelExpenseData(
    TravelRecord recordData,
  ) async {
    try {
      await _expenseDataSource.uploadEditedTravelExpenseData(recordData);
    } catch (e) {
      log(e.toString(),
          error: "ExpenseRepository upload edited Travel expense data");
      rethrow;
    }
  }

/////////////////////////////////////////////////////////////////////////
  //Expense month Data
  Future<MonthItemListModel> expenseMonthData(
    String year,
    int monthId,
  ) async {
    try {
      final MonthItemListModel response =
          await _expenseDataSource.expenseMonthData(year, monthId);
      return response;
    } catch (e) {
      log(e.toString(), error: "ExpenseRepository Month data");
      rethrow;
    }
  }

  //Expense month item delete api
  Future<void> expenseMonthItemDelete(
    String type,
    int monthId,
  ) async {
    try {
      await _expenseDataSource.expenseMonthItemDelete(type, monthId);
    } catch (e) {
      log(e.toString(), error: "ExpenseRepository delete item");
      rethrow;
    }
  }

  //Business expense information api
  Future<BusinessInformationModel> businessInformationData() async {
    try {
      final BusinessInformationModel response =
          await _expenseDataSource.businessInformationData();
      return response;
    } catch (e) {
      log(e.toString(), error: "ExpenseRepository Business information");
      rethrow;
    }
  }

  //Get Business expense data by id api
  Future<BusinessExpenseRecordModel> businessExpenseDataById(
    int id,
  ) async {
    try {
      final BusinessExpenseRecordModel response =
          await _expenseDataSource.businessExpenseDataById(id);
      return response;
    } catch (e) {
      log(e.toString(), error: "ExpenseRepository Business expense data by id");
      rethrow;
    }
  }

  //upload edited business expense data api
  Future<void> uploadEditedBusinessExpenseData(
    Record recordData,
    List<int> files,
    int id,
  ) async {
    try {
      await _expenseDataSource.uploadEditedBusinessExpenseData(
          recordData, files, id);
    } catch (e) {
      log(e.toString(),
          error: "ExpenseRepository upload edited Business expense data");
      rethrow;
    }
  }

  //upload new business expense data api
  Future<NewExpenseResponseModel> uploadNewBusinessExpenseData(
    int categoryId,
    int currencyId,
    String description,
    List<int> uploadedFiles,
    String dateOfIncurred,
    double netvalue,
  ) async {
    try {
      final NewExpenseResponseModel response =
          await _expenseDataSource.uploadNewBusinessExpenseData(
        categoryId,
        currencyId,
        description,
        uploadedFiles,
        dateOfIncurred,
        netvalue,
      );
      return response;
    } catch (e) {
      log(e.toString(), error: "ExpenseRepository upload new business expense");
      rethrow;
    }
  }

  //Upload Business expense file
  Future<BusinessImageModel> uploadBusinessExpenseFile(
    File file,
    String name,
  ) async {
    try {
      final BusinessImageModel response =
          await _expenseDataSource.uploadBusinessExpenseFile(
        file,
        name,
      );
      return response;
    } catch (e) {
      log(e.toString(), error: "ExpenseRepository upload business file");
      rethrow;
    }
  }

  //Delete Business expense file
  Future<void> deleteBusinessExpenseFile(
    int imgId,
  ) async {
    try {
      await _expenseDataSource.deleteBusinessExpenseFile(
        imgId,
      );
    } catch (e) {
      log(e.toString(), error: "ExpenseRepository delete business file");
      rethrow;
    }
  }
}
