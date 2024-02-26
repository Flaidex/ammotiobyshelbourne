import 'package:get/get.dart';

import '../controllers/bank_statement_controller.dart';

class BankStatementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BankStatementController>(
      () => BankStatementController(),
    );
  }
}
