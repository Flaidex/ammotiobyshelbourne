import 'package:dio/dio.dart';

import '../../utils/api_constants.dart';
import '../dio_base_service.dart';

class HomeServices extends DioBaseService {
  final Dio _dio = DioBaseService.dio;

  //Summary Data
  Future<Response> summaryData() async {
    try {
      return await _dio.get(
        ApiConst.summaryEndpoint,
      );
    } catch (e) {
      rethrow;
    }
  }

  //Sales invoice Data
  Future<Response> salesInvoiceData() async {
    try {
      return await _dio.get(
        ApiConst.salesInvoicesEndpoint,
      );
    } catch (e) {
      rethrow;
    }
  }

  //Payslips Data
  Future<Response> payslipsData() async {
    try {
      return await _dio.get(
        ApiConst.payslipsEndpoint,
      );
    } catch (e) {
      rethrow;
    }
  }

  //Bank Statements Data
  Future<Response> bankStatementsData() async {
    try {
      return await _dio.get(
        ApiConst.bankStatementsEndpoint,
      );
    } catch (e) {
      rethrow;
    }
  }

  //Working hours Data
  Future<Response> workingHoursData() async {
    try {
      return await _dio.get(
        ApiConst.workingHoursEndpoint,
      );
    } catch (e) {
      rethrow;
    }
  }

  //Expense Data
  Future<Response> expenseData() async {
    try {
      return await _dio.get(
        ApiConst.expensesEndpoint,
      );
    } catch (e) {
      rethrow;
    }
  }
}
