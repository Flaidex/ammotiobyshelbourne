import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/repositorys/home_repository.dart';
import 'package:ammotiobyshelbourne/app/modules/working_hours/model/working_hours_list_model.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/common_widget.dart';
import 'package:get/get.dart';

class WorkingHoursController extends GetxController {
  final RxBool _loading = false.obs;
  final RxList<WorkingHoursModel> _workingHoursListFinal =
      <WorkingHoursModel>[].obs;
  final RxList<WorkingHoursModel> _workingHoursList = <WorkingHoursModel>[].obs;
  final RxList<String> _yearList = <String>[].obs;
  final RxString _selectedYear = "".obs;

  //Getter
  bool get loading => _loading.value;
  List<WorkingHoursModel> get workingHoursListFinal =>
      [..._workingHoursListFinal];
  List<WorkingHoursModel> get workingHoursList => [..._workingHoursList];
  List<String> get yearList => [..._yearList];
  String get selectedYear => _selectedYear.value;

  //Expand item
  void expandItem(WorkingHoursModel item, int index) {
    _workingHoursList[index] = _workingHoursList[index].copyWith(
      isExpanded: item.isExpanded == null ? true : !item.isExpanded!,
    );
  }

  @override
  void onInit() async {
    await callWorkingHoursDataApi();
    super.onInit();
  }

  //Profile repository
  final HomeRepository _homeRepository = Get.put(HomeRepository());

  //!----------------(Call working hours data api)
  Future<void> callWorkingHoursDataApi() async {
    _loading(true);
    try {
      //api called
      final res = await _homeRepository.workingHoursData();
      _workingHoursListFinal.value = res.items ?? [];
      _workingHoursList.value = List.from(_workingHoursListFinal);
      getListOfYear();
      _loading(false);
    } catch (e) {
      _loading(false);
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          callWorkingHoursDataApi();
        },
      );
      log(e.toString(), name: "WorkingHours controller");
    }
  }

  //Get list of year
  void getListOfYear() {
    _yearList.value = [];
    for (var element in _workingHoursList) {
      if (!_yearList.contains(element.period!.year.toString())) {
        _yearList.add(element.period!.year.toString());
      }
    }
  }

  //Filter Working Hours
  void filterWorkingHours(String year) {
    _selectedYear.value = year;
    _workingHoursList.value = _workingHoursListFinal.where((element) {
      return element.period?.year.toString() == year;
    }).toList();
  }
}
