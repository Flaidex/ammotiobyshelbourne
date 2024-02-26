import 'package:ammotiobyshelbourne/app/data/dio_base_service.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_theme.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioBaseService.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConst.appName,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppThemeData.themeData,
    ),
  );
}
