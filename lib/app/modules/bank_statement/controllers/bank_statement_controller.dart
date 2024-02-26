import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/repositorys/home_repository.dart';
import 'package:ammotiobyshelbourne/app/modules/bank_statement/model/bank_statements_list_model.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/common_widget.dart';
import 'package:get/get.dart';

class BankStatementController extends GetxController {
  final RxBool _loading = false.obs;
  final RxList<BankStatementsModel> _bankStatementsListFinal =
      <BankStatementsModel>[].obs;
  final RxList<BankStatementsModel> _bankStatementsList =
      <BankStatementsModel>[].obs;
  final RxList<String> _yearList = <String>[].obs;
  final RxString _selectedYear = "".obs;

  //Getter
  bool get loading => _loading.value;
  List<BankStatementsModel> get bankStatementsListFinal =>
      [..._bankStatementsListFinal];
  List<BankStatementsModel> get bankStatementsList => [..._bankStatementsList];
  List<String> get yearList => [..._yearList];
  String get selectedYear => _selectedYear.value;

  @override
  void onInit() async {
    await callBankStatementsDataApi();
    super.onInit();
  }

  //Profile repository
  final HomeRepository _homeRepository = Get.put(HomeRepository());

  //!----------------(Call Bank Statements data api)
  Future<void> callBankStatementsDataApi() async {
    _loading(true);
    try {
      //api called
      final res = await _homeRepository.bankStatementsData();
      _bankStatementsListFinal.value = res.items ?? [];
      _bankStatementsList.value = List.from(_bankStatementsListFinal);
      getListOfYear();
      _loading(false);
    } catch (e) {
      _loading(false);
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          callBankStatementsDataApi();
        },
      );
      log(e.toString(), name: "BankStatements controller");
    }
  }

  //Get list of year
  void getListOfYear() {
    _yearList.value = [];
    for (var element in _bankStatementsList) {
      if (!_yearList.contains(element.date!.year.toString())) {
        _yearList.add(element.date!.year.toString());
      }
    }
  }

  //Filter BankStatements
  void filterBankStatements(String year) {
    _selectedYear.value = year;
    _bankStatementsList.value = _bankStatementsListFinal.where((element) {
      return element.date?.year.toString() == year;
    }).toList();
  }
}
