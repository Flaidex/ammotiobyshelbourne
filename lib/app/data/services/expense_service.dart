import 'dart:convert';
import 'dart:io';

import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-expense-record/business_expense_record_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/travel-expense-record/travel_expense_record_model.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../utils/api_constants.dart';
import '../dio_base_service.dart';

class ExpenseServices extends DioBaseService {
  final Dio _dio = DioBaseService.dio;

  //Travel expense information api
  Future<Response> travelInformationData() async {
    try {
      return await _dio.get(
        ApiConst.travelInformationEndpoint,
      );
    } catch (e) {
      rethrow;
    }
  }

  //Get Travel expense data by id api
  Future<Response> travelExpenseDataById(
    int id,
  ) async {
    try {
      return await _dio.get(
        "${ApiConst.getTravelExpensedataEndpoint}/$id",
      );
    } catch (e) {
      rethrow;
    }
  }

  //upload new Travel expense data api
  Future<Response> uploadNewTravelExpenseData(
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
      bool useCar) async {
    final data = <String, dynamic>{
      "car_make_model": makeModel,
      "client": client,
      "start_location": startLocation,
      "end_location": endLocation,
      "engine_size_id": engineId ?? 0,
      "incurred": DateFormat(StringConst.uploadingDateFormat)
          .format(DateFormat(StringConst.dateFormat).parse(incurred)),
      "location": locationId,
      "motor_distance": double.tryParse(motorDistance) ?? 0,
      "motor_end_location": motorEndLocation,
      "motor_start_location": motorStartLocation,
      "nights": int.parse(nights),
      "purpose": purpose,
      "subsistence": double.tryParse(netSubsistence) ?? 0,
      "type_id": typeId,
      "use_car": useCar,
    };
    try {
      return await _dio.post(
        ApiConst.uploadNewTraveldataEndpoint,
        data: data,
      );
    } catch (e) {
      rethrow;
    }
  }

  //upload edited Travel expense data api
  Future<Response> uploadEditedTravelExpenseData(
    TravelRecord recordData,
  ) async {
    final data = <String, dynamic>{
      "accomodation_nights_____": recordData.accomodation_nights_____,
      "accomodation_required_____": recordData.accomodation_required_____,
      "added_time": recordData.added_time == null
          ? null
          : DateFormat("yyyy-MM-dd hh:MM:ss").format(recordData.added_time!),
      "approved": recordData.approved == null
          ? null
          : DateFormat("yyyy-MM-dd hh:MM:ss").format(recordData.approved!),
      "car_make_model": recordData.car_make_model,
      "client": recordData.client,
      "currency_id": recordData.currency_id,
      "deleted_at": recordData.deleted_at == null
          ? null
          : DateFormat("yyyy-MM-dd").format(recordData.deleted_at!),
      "deleted_by": recordData.deleted_by,
      "end_location": recordData.end_location,
      "end_time": recordData.end_time == null
          ? null
          : DateFormat("yyyy-MM-dd").format(recordData.end_time!),
      "engine_size_id": recordData.engine_size_id ?? 0,
      "expense_id": recordData.expense_id,
      "id": recordData.id,
      "incurred": recordData.incurred == null
          ? null
          : DateFormat("yyyy-MM-dd").format(recordData.incurred!),
      "location": recordData.location,
      "mileage_value": recordData.mileage_value,
      "motor_distance": recordData.motor_distance,
      "motor_end_location": recordData.motor_end_location,
      "motor_start_location": recordData.motor_start_location,
      "nights": recordData.nights?.toInt() ?? 0,
      "nights1": recordData.nights1?.toInt() ?? 0,
      "nights2": recordData.nights2?.toInt() ?? 0,
      "overnight": double.tryParse(recordData.overnight.toString()),
      "overnight_per_night_additional_accommodation":
          recordData.overnight_per_night_additional_accommodation,
      "overnight_per_night_additional_subsistence": double.tryParse(
          recordData.overnight_per_night_additional_subsistence.toString()),
      "overnight_per_night_base":
          double.tryParse(recordData.overnight_per_night_base.toString()),
      "overnight_per_night_total":
          double.tryParse(recordData.overnight_per_night_total.toString()),
      "paid": recordData.paid == null
          ? null
          : DateFormat("yyyy-MM-dd").format(recordData.paid!),
      "paid_by": recordData.paidBy,
      "purpose": recordData.purpose,
      "rates_hours_5": recordData.rates_hours_5?.toDouble(),
      "rates_hours_10": recordData.rates_hours_10?.toDouble(),
      "rates_local_currency_id": recordData.rates_local_currency_id,
      "rates_local_currency_rate":
          recordData.rates_local_currency_rate?.toDouble() ?? 0.0,
      "rates_location": int.tryParse(recordData.rates_location.toString()),
      "rates_overnight": recordData.rates_overnight?.toDouble(),
      "rates_overnight_additional_accommodation":
          recordData.rates_overnight_additional_accommodation,
      "rates_overnight_additional_accommodation_description":
          recordData.rates_overnight_additional_accommodation_description,
      "rates_overnight_additional_accommodation_value": double.tryParse(
          recordData.rates_overnight_additional_accommodation_value.toString()),
      "rates_overnight_additional_subsistence_currency_id": int.tryParse(
          recordData.rates_overnight_additional_subsistence_currency_id
              .toString()),
      "rates_overnight_additional_subsistence_currency_rate": double.tryParse(
          recordData.rates_overnight_additional_subsistence_currency_rate
              .toString()),
      "rates_overnight_additional_subsistence_value": double.tryParse(
          recordData.rates_overnight_additional_subsistence_value.toString()),
      "rejected": recordData.rejected == null
          ? null
          : DateFormat("yyyy-MM-dd").format(recordData.rejected!),
      "rejected_by": recordData.rejected_by,
      "rejected_reason": recordData.rejected_reason,
      "start_location": recordData.start_location,
      "start_time": recordData.start_time == null
          ? null
          : DateFormat("yyyy-MM-dd").format(recordData.start_time!),
      "status": recordData.status,
      "status_id": recordData.status_id,
      "status_name": recordData.status_name,
      "submitted": recordData.submitted == null
          ? null
          : DateFormat("yyyy-MM-dd").format(recordData.submitted!),
      "subsistence": recordData.subsistence?.toDouble(),
      "total": (recordData.nights! * recordData.subsistence!).toDouble(),
      "type_id": recordData.type_id,
      "use_car": recordData.use_car?.toInt(),
      "user_id": recordData.user_id,
    };
    try {
      return await _dio.post(
        "${ApiConst.getTravelExpensedataEndpoint}/${recordData.id}",
        data: json.encode(data),
      );
    } catch (e) {
      rethrow;
    }
  }

  //////////////////////////////////////////////
  //////////////////////////////////////////////

  //Expense month Data
  Future<Response> expenseMonthData(
    String year,
    int monthId,
  ) async {
    try {
      return await _dio.get(
        "${ApiConst.expensesEndpoint}/$year/$monthId",
      );
    } catch (e) {
      rethrow;
    }
  }

  //Expense month item delete api
  Future<Response> expenseMonthItemDelete(
    String type,
    int monthId,
  ) async {
    try {
      return await _dio.delete(
        "${ApiConst.expensesEndpoint}/$type/$monthId",
      );
    } catch (e) {
      rethrow;
    }
  }

  //Business expense information api
  Future<Response> businessInformationData() async {
    try {
      return await _dio.get(
        ApiConst.businessInformationEndpoint,
      );
    } catch (e) {
      rethrow;
    }
  }

  //Get Business expense data by id api
  Future<Response> businessExpenseDataById(
    int id,
  ) async {
    try {
      return await _dio.get(
        "${ApiConst.getBusinessExpensedataEndpoint}/$id",
      );
    } catch (e) {
      rethrow;
    }
  }

  //Upload Business expense file
  Future<Response> uploadBusinessExpenseFile(File file, String name) async {
    final formData = FormData.fromMap({
      'expenseId': 0,
      'file': await MultipartFile.fromFile(file.path, filename: name),
    });
    try {
      return await _dio.post(
        ApiConst.uploadBusinessFileEndpoint,
        data: formData,
        options: Options(
          headers: {
            'content-type':
                'multipart/form-data; boundary=----WebKitFormBoundaryBBkUHdEA4VuYJ1PC',
          },
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  //upload new business expense data api
  Future<Response> uploadNewBusinessExpenseData(
    int categoryId,
    int currencyId,
    String description,
    List<int> uploadedFiles,
    String dateOfIncurred,
    double netvalue,
  ) async {
    final data = <String, dynamic>{
      "category_id": categoryId,
      "currency_id": currencyId,
      "description": description,
      "files": uploadedFiles,
      "incurred": DateFormat(StringConst.uploadingDateFormat)
          .format(DateFormat(StringConst.dateFormat).parse(dateOfIncurred)),
      'net': netvalue,
    };
    try {
      return await _dio.post(
        ApiConst.uploadMNewBusinessdataEndpoint,
        data: data,
      );
    } catch (e) {
      rethrow;
    }
  }

  //upload edited business expense data api
  Future<Response> uploadEditedBusinessExpenseData(
    Record recordData,
    List<int> files,
    int id,
  ) async {
    final data = <String, dynamic>{
      "id": recordData.id,
      "value": recordData.value,
      "net": recordData.net,
      "gross": recordData.gross,
      "currency_id": recordData.currency_id,
      "incurred": DateFormat(StringConst.uploadingDateFormat)
          .format(recordData.incurred!),
      "submitted": DateFormat(StringConst.uploadingDateFormat)
          .format(recordData.submitted!),
      "approved": recordData.approved,
      "paid": recordData.paid,
      "approved_by_id": recordData.approved_by_id,
      "type_id": recordData.type_id,
      "description": recordData.description,
      "vat_rate": recordData.vat_rate,
      "vat_amount": recordData.vat_amount,
      "status_id": recordData.status_id,
      "status": recordData.status,
      "expense_id": recordData.expense_id,
      "filename": recordData.filename,
      "hide": recordData.hide,
      "user_id": recordData.user_id,
      "import_cplus": recordData.import_cplus,
      "is_deduction": recordData.is_deduction,
      "rejected": recordData.rejected,
      "rejected_by": recordData.rejected_by,
      "paid_by": recordData.paid_by,
      "rejected_reason": recordData.rejected_reason,
      "deleted_at": recordData.deleted_at,
      "deleted_by": recordData.deleted_by,
      "status_name": recordData.status_name,
      "category_id": recordData.type_id,
      "files": files,
    };
    try {
      return await _dio.post(
        "${ApiConst.getBusinessExpensedataEndpoint}/$id",
        data: data,
      );
    } catch (e) {
      rethrow;
    }
  }

  //Delete Business expense file
  Future<Response> deleteBusinessExpenseFile(int imgId) async {
    try {
      return await _dio.delete(
        "${ApiConst.uploadBusinessFileEndpoint}/$imgId",
      );
    } catch (e) {
      rethrow;
    }
  }
}
