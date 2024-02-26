import 'package:ammotiobyshelbourne/app/modules/bank_statement/controllers/bank_statement_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/controllers/expenses_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/overview_screen/controllers/overview_screen_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/payslips/controllers/payslips_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/profile/controllers/profile_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/sales_invoice/controllers/sales_invoice_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/working_hours/controllers/working_hours_controller.dart';
import 'package:ammotiobyshelbourne/app/routes/app_pages.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  final RxInt _currentPageIndex = 0.obs;
  final List<GetPage> _pages = [
    AppPages.routes[6],
    AppPages.routes[4],
    AppPages.routes[10],
    AppPages.routes[5],
    AppPages.routes[3],
    AppPages.routes[9],
    AppPages.routes[2],
  ].obs;

  //Getter
  int get currentPageIndex => _currentPageIndex.value;
  List<GetPage> get pages => _pages;

  //update index
  void updateIndex(int index) => _currentPageIndex.value = index;

  //logout
  void logout() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(StringConst.authToken);
    await prefs.remove(StringConst.currency);
    Get.offAndToNamed(Routes.LOGIN);
  }

  //change page index and navigate
  void changePage(int index) {
    updateIndex(index);

    //--------------Re-call page controller
    switch (index) {
      case 0:
        Get.delete<OverviewScreenController>();
        Get.put(OverviewScreenController());
        break;
      case 1:
        Get.delete<SalesInvoiceController>();
        Get.put(SalesInvoiceController());
        break;
      case 2:
        Get.delete<ExpensesController>();
        Get.put(ExpensesController());
        break;
      case 3:
        Get.delete<PayslipsController>();
        Get.put(PayslipsController());
        break;
      case 4:
        Get.delete<WorkingHoursController>();
        Get.put(WorkingHoursController());
        break;
      case 5:
        Get.delete<BankStatementController>();
        Get.put(BankStatementController());
        break;
      case 6:
        Get.delete<ProfileController>();
        Get.put(ProfileController());
        break;

      default:
    }

    //-----------close drawer
    Get.back();
  }
}
