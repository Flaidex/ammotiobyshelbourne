import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/repositorys/home_repository.dart';
import 'package:ammotiobyshelbourne/app/modules/payslips/model/payslips_list_model.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/common_widget.dart';
import 'package:get/get.dart';

class PayslipsController extends GetxController {
  final RxBool _loading = false.obs;
  final RxList<PayslipsModel> _payslipsListFinal = <PayslipsModel>[].obs;
  final RxList<PayslipsModel> _payslipsList = <PayslipsModel>[].obs;
  final RxList<String> _yearList = <String>[].obs;
  final RxString _selectedYear = "".obs;

  //Getter
  bool get loading => _loading.value;
  List<PayslipsModel> get payslipsListFinal => [..._payslipsListFinal];
  List<PayslipsModel> get payslipsList => [..._payslipsList];
  List<String> get yearList => [..._yearList];
  String get selectedYear => _selectedYear.value;

  @override
  void onInit() async {
    await callPayslipsDataApi();
    super.onInit();
  }

  //Profile repository
  final HomeRepository _homeRepository = Get.put(HomeRepository());

  //!----------------(Call Payslips data api)
  Future<void> callPayslipsDataApi() async {
    _loading(true);
    try {
      //api called
      final res = await _homeRepository.payslipsData();
      _payslipsListFinal.value = res.items ?? [];
      _payslipsList.value = List.from(_payslipsListFinal);
      getListOfYear();
      _loading(false);
    } catch (e) {
      _loading(false);
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          callPayslipsDataApi();
        },
      );
      log(e.toString(), name: "Payslips controller");
    }
  }

  //Get list of year
  void getListOfYear() {
    _yearList.value = [];
    for (var element in _payslipsList) {
      if (!_yearList.contains(element.date!.year.toString())) {
        _yearList.add(element.date!.year.toString());
      }
    }
  }

  //Filter Payslips
  void filterPayslips(String year) {
    _selectedYear.value = year;
    _payslipsList.value = _payslipsListFinal.where((element) {
      return element.date?.year.toString() == year;
    }).toList();
  }
}
