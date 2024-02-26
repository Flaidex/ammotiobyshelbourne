import 'package:get/get.dart';

import '../controllers/overview_screen_controller.dart';

class OverviewScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OverviewScreenController>(
      () => OverviewScreenController(),
    );
  }
}
