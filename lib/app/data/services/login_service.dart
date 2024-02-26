import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:dio/dio.dart';

import '../../utils/api_constants.dart';
import '../dio_base_service.dart';

class LoginServices extends DioBaseService {
  final Dio _dio = DioBaseService.dio;
  //login
  Future<Response> login({
    required String email,
    required String password,
  }) async {
    String session = await getSession();
    final Object body = <String, String>{
      "email": email,
      "password": password,
      "session": session,
    };

    try {
      return await _dio.post(
        ApiConst.loginEndpoint,
        data: body,
      );
    } catch (e) {
      rethrow;
    }
  }

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
}
