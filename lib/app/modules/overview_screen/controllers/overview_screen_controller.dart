import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/repositorys/home_repository.dart';
import 'package:ammotiobyshelbourne/app/modules/overview_screen/model/overview_model.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/common_widget.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class OverviewScreenController extends GetxController {
  final Rx<OverviewModel> _overviewData = const OverviewModel().obs;
  final RxBool _loading = false.obs;
  final RxString _currencySymbol = "".obs;

  //Getter
  OverviewModel get overviewData => _overviewData.value;
  bool get loading => _loading.value;
  String get currencySymbol => _currencySymbol.value;

  @override
  void onInit() async {
    await callOverviewDataApi();
    await getCurrencySymbol();
    super.onInit();
  }

  //Home repository
  final HomeRepository _homeRepository = Get.put(HomeRepository());

  //!----------------(Call Overview data api)
  Future<void> callOverviewDataApi() async {
    _loading(true);
    try {
      //api called
      _overviewData.value = await _homeRepository.summaryData();
      _loading(false);
    } catch (e) {
      _loading(false);
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          callOverviewDataApi();
        },
      );
      log(e.toString(), name: "Overview controller");
    }
  }

//Get price with currency symbol
  String getPriceWithCurrency(num value) {
    return "$currencySymbol${value.toStringAsFixed(2)}";
  }

  //Get currency symbol
  Future<void> getCurrencySymbol() async {
    final String currency = await getCurrency();
    final currencyFormat = NumberFormat.simpleCurrency(name: currency);
    _currencySymbol.value = currencyFormat.currencySymbol;
  }

  //
}
