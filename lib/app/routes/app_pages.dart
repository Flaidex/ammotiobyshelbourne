// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/bank_statement/bindings/bank_statement_binding.dart';
import '../modules/bank_statement/views/bank_statement_view.dart';
import '../modules/expense_details/bindings/expense_details_binding.dart';
import '../modules/expense_details/views/expense_details_view.dart';
import '../modules/expenses/bindings/expenses_binding.dart';
import '../modules/expenses/views/expenses_view.dart';
import '../modules/get_started/bindings/get_started_binding.dart';
import '../modules/get_started/views/get_started_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/overview_screen/bindings/overview_screen_binding.dart';
import '../modules/overview_screen/views/overview_screen_view.dart';
import '../modules/payslips/bindings/payslips_binding.dart';
import '../modules/payslips/views/payslips_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/sales_invoice/bindings/sales_invoice_binding.dart';
import '../modules/sales_invoice/views/sales_invoice_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/working_hours/bindings/working_hours_binding.dart';
import '../modules/working_hours/views/working_hours_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.WORKING_HOURS,
      page: () => WorkingHoursView(),
      binding: WorkingHoursBinding(),
    ),
    GetPage(
      name: _Paths.SALES_INVOICE,
      page: () => SalesInvoiceView(),
      binding: SalesInvoiceBinding(),
    ),
    GetPage(
      name: _Paths.PAYSLIPS,
      page: () => PayslipsView(),
      binding: PayslipsBinding(),
    ),
    GetPage(
      name: _Paths.OVERVIEW_SCREEN,
      page: () => OverviewScreenView(),
      binding: OverviewScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.GET_STARTED,
      page: () => const GetStartedView(),
      binding: GetStartedBinding(),
    ),
    GetPage(
      name: _Paths.BANK_STATEMENT,
      page: () => BankStatementView(),
      binding: BankStatementBinding(),
    ),
    GetPage(
      name: _Paths.EXPENSES,
      page: () => ExpensesView(),
      binding: ExpensesBinding(),
    ),
    GetPage(
      name: _Paths.EXPENSE_DETAILS,
      page: () => ExpenseDetailsView(),
      binding: ExpenseDetailsBinding(),
    ),
  ];
}
