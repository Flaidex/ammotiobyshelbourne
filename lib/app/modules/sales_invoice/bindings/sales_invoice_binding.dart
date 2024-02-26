import 'package:get/get.dart';

import '../controllers/sales_invoice_controller.dart';

class SalesInvoiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalesInvoiceController>(
      () => SalesInvoiceController(),
    );
  }
}
