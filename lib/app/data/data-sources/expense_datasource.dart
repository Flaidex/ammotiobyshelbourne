import 'dart:developer';
import 'dart:io';

import 'package:ammotiobyshelbourne/app/data/services/expense_service.dart';
import 'package:ammotiobyshelbourne/app/modules/expense_details/model/month_item_list_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-expense-record/business_expense_record_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-image/business_image_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-information/business_information_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/new-expense-response/new_expense_response_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/travel-expense-record/travel_expense_record_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/travel-information/travel_information_model.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ExpenseDataSource {
  final ExpenseServices _expenseServices = Get.put(ExpenseServices());

  //Travel expense information api
  Future<TravelInformationModel> travelInformationData() async {
    try {
      final response = await _expenseServices.travelInformationData();
      if (response.statusCode == 200) {
        final TravelInformationModel model =
            TravelInformationModel.fromJson(response.data);
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
      final response = await _expenseServices.uploadNewTravelExpenseData(
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
      if (response.statusCode == 200) {
        final NewExpenseResponseModel model =
            NewExpenseResponseModel.fromJson(response.data);
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

  //Get Travel expense data by id api
  Future<TravelExpenseRecordModel> travelExpenseDataById(
    int id,
  ) async {
    try {
      final response = await _expenseServices.travelExpenseDataById(id);
      if (response.statusCode == 200) {
        final TravelExpenseRecordModel model =
            TravelExpenseRecordModel.fromJson(response.data);
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

  //upload edited Travel expense data api
  Future<void> uploadEditedTravelExpenseData(
    TravelRecord recordData,
  ) async {
    try {
      final response =
          await _expenseServices.uploadEditedTravelExpenseData(recordData);
      if (response.statusCode == 200) {
        //
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

////////////////////////////////////////////////////////////////////
  //Expense month Data
  Future<MonthItemListModel> expenseMonthData(
    String year,
    int monthId,
  ) async {
    try {
      final response = await _expenseServices.expenseMonthData(
        year,
        monthId,
      );
      if (response.statusCode == 200) {
        final MonthItemListModel model =
            MonthItemListModel.fromJson(response.data);
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

  //Expense month item delete api
  Future<void> expenseMonthItemDelete(
    String type,
    int monthId,
  ) async {
    try {
      final response = await _expenseServices.expenseMonthItemDelete(
        type,
        monthId,
      );
      if (response.statusCode == 200) {
        //
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

  //Business expense information api
  Future<BusinessInformationModel> businessInformationData() async {
    try {
      final response = await _expenseServices.businessInformationData();
      if (response.statusCode == 200) {
        final BusinessInformationModel model =
            BusinessInformationModel.fromJson(response.data);
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

  //Get Business expense data by id api
  Future<BusinessExpenseRecordModel> businessExpenseDataById(
    int id,
  ) async {
    try {
      final response = await _expenseServices.businessExpenseDataById(id);
      if (response.statusCode == 200) {
        final BusinessExpenseRecordModel model =
            BusinessExpenseRecordModel.fromJson(response.data);
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

  //upload edited business expense data api
  Future<void> uploadEditedBusinessExpenseData(
    Record recordData,
    List<int> files,
    int id,
  ) async {
    try {
      final response = await _expenseServices.uploadEditedBusinessExpenseData(
          recordData, files, id);
      if (response.statusCode == 200) {
        //
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

  //Upload Business expense file
  Future<BusinessImageModel> uploadBusinessExpenseFile(
    File file,
    String name,
  ) async {
    try {
      final response = await _expenseServices.uploadBusinessExpenseFile(
        file,
        name,
      );
      if (response.statusCode == 200) {
        final BusinessImageModel model =
            BusinessImageModel.fromJson(response.data);
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
      final response = await _expenseServices.uploadNewBusinessExpenseData(
        categoryId,
        currencyId,
        description,
        uploadedFiles,
        dateOfIncurred,
        netvalue,
      );
      if (response.statusCode == 200) {
        final NewExpenseResponseModel model =
            NewExpenseResponseModel.fromJson(response.data);
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

  //Delete Business expense file
  Future<void> deleteBusinessExpenseFile(
    int imgId,
  ) async {
    try {
      final response = await _expenseServices.deleteBusinessExpenseFile(imgId);
      if (response.statusCode == 200) {
        //
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
