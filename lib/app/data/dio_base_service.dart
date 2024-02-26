import 'package:ammotiobyshelbourne/app/utils/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/string_constants.dart';

class DioBaseService {
  static late Dio _dio;
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConst.baseUrl,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
      ),
    );

    _prefs = await SharedPreferences.getInstance();

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (
        RequestOptions options,
        RequestInterceptorHandler handler,
      ) {
        final String? token = _prefs?.getString(StringConst.authToken);
        final String? session = _prefs?.getString(StringConst.session);

        if (token != null) {
          options.headers[ApiConst.authorization] = token;
          options.headers[StringConst.session] = session;
        }
        return handler.next(options);
      },
    ));
  }

  static Dio get dio {
    return _dio;
  }
}
