import 'package:ammotiobyshelbourne/app/routes/app_pages.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetStartedController extends GetxController {
  //-------------set get started bool and navigate to login
  void getStarted() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(StringConst.alreadyGetStarted, true);
    Get.offNamed(Routes.LOGIN);
  }
  //
}
