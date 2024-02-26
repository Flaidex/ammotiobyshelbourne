import 'package:get/get.dart';

import '../controllers/working_hours_controller.dart';

class WorkingHoursBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkingHoursController>(
      () => WorkingHoursController(),
    );
  }
}
