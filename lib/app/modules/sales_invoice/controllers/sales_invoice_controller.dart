import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/repositorys/home_repository.dart';
import 'package:ammotiobyshelbourne/app/modules/sales_invoice/model/sales_invoice_list_model.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/common_widget.dart';
import 'package:get/get.dart';

class SalesInvoiceController extends GetxController {
  final RxBool _loading = false.obs;
  final RxList<SalesInvoiceModel> _salesInvoiceListFinal =
      <SalesInvoiceModel>[].obs;
  final RxList<SalesInvoiceModel> _salesInvoiceList = <SalesInvoiceModel>[].obs;
  final RxList<String> _yearList = <String>[].obs;
  final RxString _selectedYear = "".obs;

  //Getter
  bool get loading => _loading.value;
  List<SalesInvoiceModel> get salesInvoiceListFinal =>
      [..._salesInvoiceListFinal];
  List<SalesInvoiceModel> get salesInvoiceList => [..._salesInvoiceList];
  List<String> get yearList => [..._yearList];
  String get selectedYear => _selectedYear.value;

  @override
  void onInit() async {
    await callSalesInvoiceDataApi();
    super.onInit();
  }

  //Profile repository
  final HomeRepository _homeRepository = Get.put(HomeRepository());

  //!----------------(Call Sales invoice data api)
  Future<void> callSalesInvoiceDataApi() async {
    _loading(true);
    try {
      //api called
      final res = await _homeRepository.salesInvoiceData();
      _salesInvoiceListFinal.value = res.items ?? [];
      _salesInvoiceList.value = List.from(_salesInvoiceListFinal);
      getListOfYear();
      _loading(false);
    } catch (e) {
      _loading(false);
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          callSalesInvoiceDataApi();
        },
      );
      log(e.toString(), name: "Sales invoice controller");
    }
  }

  //Get list of year
  void getListOfYear() {
    _yearList.value = [];
    for (var element in _salesInvoiceList) {
      if (!_yearList.contains(element.date!.year.toString())) {
        _yearList.add(element.date!.year.toString());
      }
    }
  }

  //Filter sales invoice
  void filterSalesInvoice(String year) {
    _selectedYear.value = year;
    _salesInvoiceList.value = _salesInvoiceListFinal.where((element) {
      return element.date?.year.toString() == year;
    }).toList();
  }
}
