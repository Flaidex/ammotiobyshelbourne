import 'package:ammotiobyshelbourne/app/routes/app_pages.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  static late SharedPreferences _prefs;

  @override
  void onInit() {
    getTokenAndNavigate();
    super.onInit();
  }

//get user token and navigate
  void getTokenAndNavigate() async {
    _prefs = await SharedPreferences.getInstance();
    String? authToken = _prefs.getString(StringConst.authToken);
    bool? alreadyGetStarted = _prefs.getBool(StringConst.alreadyGetStarted);
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (alreadyGetStarted == null || !alreadyGetStarted) {
          Get.offNamed(Routes.GET_STARTED);
        } else if (authToken == null || authToken.isEmpty) {
          Get.offNamed(Routes.LOGIN);
        } else {
          Get.offNamed(Routes.HOME);
        }
      },
    );
  }
}
