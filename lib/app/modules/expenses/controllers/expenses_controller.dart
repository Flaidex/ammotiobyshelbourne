import 'dart:developer';
import 'dart:io';

import 'package:ammotiobyshelbourne/app/data/repositorys/expense_repository.dart';
import 'package:ammotiobyshelbourne/app/data/repositorys/home_repository.dart';
import 'package:ammotiobyshelbourne/app/modules/expense_details/controllers/expense_details_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-expense-record/business_expense_record_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-information/business_information_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/expense_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/travel-expense-record/travel_expense_record_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/travel-information/travel_information_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/widgets/confirmation_message_dialog.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/widgets/new_business_dialog.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/widgets/new_travel_dialog.dart';
import 'package:ammotiobyshelbourne/app/routes/app_pages.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/common_widget.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ExpensesController extends GetxController {
  final RxBool _loading = false.obs;
  final RxList<ExpenseModel> _expensesListFinal = <ExpenseModel>[].obs;
  final RxList<ExpenseModel> _expensesList = <ExpenseModel>[].obs;
  final RxList<String> _yearList = <String>[].obs;
  final RxString _selectedYear = "".obs;
  final RxString _currencySymbol = "".obs;
  final Rx<BusinessInformationModel> _businessInformationData =
      const BusinessInformationModel().obs;
  final Rx<TravelInformationModel> _travelInformationData =
      const TravelInformationModel().obs;

  //
  final GlobalKey<FormState> _businessDialogFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _travelDialogFormKey = GlobalKey<FormState>();
  final RxBool _businessCheckbox1 = false.obs;
  final RxBool _businessCheckbox2 = false.obs;
  final RxBool _travelCheckbox1 = false.obs;
  final RxBool _travelCheckbox2 = false.obs;
  final RxBool _travelSwitchBtnValue = false.obs;

  final Rx<num> _convertedPrice = 0.0.obs;
  final RxList<String> _businessFileNameList = <String>[].obs;
  final RxList<int> _uploadedBusinessFileIdList = <int>[].obs;

  //Business Expense dialog text controller
  final Rx<TextEditingController> _dateOfBusinessIncurredController =
      TextEditingController().obs;
  final Rx<TextEditingController> _businessValueController =
      TextEditingController().obs;
  final Rx<TextEditingController> _businessExpenseDetailsController =
      TextEditingController().obs;
  final Rx<Category> _businessSelectedCategory = const Category().obs;
  final Rx<Currency> _businessSelectedCurrency = const Currency().obs;

  //Travel Expense dialog text controller
  final Rx<TextEditingController> _dateOfTravelStartController =
      TextEditingController().obs;
  final Rx<TextEditingController> _whoClientController =
      TextEditingController().obs;
  final Rx<TextEditingController> _netSubsistenceController =
      TextEditingController().obs;
  final Rx<TextEditingController> _purposeOfTripController =
      TextEditingController().obs;
  final Rx<TextEditingController> _tripBeginController =
      TextEditingController().obs;
  final Rx<TextEditingController> _tripEndController =
      TextEditingController().obs;
  //private car section
  final Rx<TextEditingController> _makeModelController =
      TextEditingController().obs;
  final Rx<TextEditingController> _journeyBeginController =
      TextEditingController().obs;
  final Rx<TextEditingController> _journeyEndController =
      TextEditingController().obs;
  final Rx<TextEditingController> _distanceTravelController =
      TextEditingController().obs;

  final Rx<SubsistenceClaim> _travelSelectedSubsistence =
      Constants.subsistenceList[0].obs;
  final RxString _travelSelectedDurationAway = "".obs;
  final Rx<Location> _travelSelectedLocation = const Location().obs;
  final Rx<EngineSize> _travelSelectedEngineSize = const EngineSize().obs;

  //Getter
  bool get loading => _loading.value;
  List<ExpenseModel> get expensesListFinal => [..._expensesListFinal];
  List<ExpenseModel> get expensesList => [..._expensesList];
  List<String> get yearList => [..._yearList];
  String get selectedYear => _selectedYear.value;
  String get currencySymbol => _currencySymbol.value;

//----------------Business dialog Getter
  GlobalKey<FormState> get businessDialogFormKey => _businessDialogFormKey;
  List<String> get businessFileNameList => [..._businessFileNameList];
  List<int> get uploadedBusinessFileIdList => [..._uploadedBusinessFileIdList];
  bool get businessCheckbox1 => _businessCheckbox1.value;
  bool get businessCheckbox2 => _businessCheckbox2.value;
  BusinessInformationModel get businessInformationData =>
      _businessInformationData.value;

  num get convertedPrice => _convertedPrice.value;

  Category get businessSelectedCategory => _businessSelectedCategory.value;
  Currency get businessSelectedCurrency => _businessSelectedCurrency.value;

  TextEditingController get dateOfBusinessIncurredController =>
      _dateOfBusinessIncurredController.value;
  TextEditingController get businessValueController =>
      _businessValueController.value;
  TextEditingController get businessExpenseDetailsController =>
      _businessExpenseDetailsController.value;

  //---------------------Travel dialog getter
  GlobalKey<FormState> get travelDialogFormKey => _travelDialogFormKey;
  TravelInformationModel get travelInformationData =>
      _travelInformationData.value;
  bool get travelCheckbox1 => _travelCheckbox1.value;
  bool get travelCheckbox2 => _travelCheckbox2.value;
  bool get travelSwitchBtnValue => _travelSwitchBtnValue.value;

  SubsistenceClaim get travelSelectedSubsistence =>
      _travelSelectedSubsistence.value;
  String get travelSelectedDurationAway => _travelSelectedDurationAway.value;
  Location get travelSelectedLocation => _travelSelectedLocation.value;
  EngineSize get travelSelectedEngineSize => _travelSelectedEngineSize.value;

  TextEditingController get dateOfTravelStartController =>
      _dateOfTravelStartController.value;
  TextEditingController get whoClientController => _whoClientController.value;
  TextEditingController get netSubsistenceController =>
      _netSubsistenceController.value;
  TextEditingController get purposeOfTripController =>
      _purposeOfTripController.value;
  TextEditingController get tripBeginController => _tripBeginController.value;
  TextEditingController get tripEndController => _tripEndController.value;
  TextEditingController get makeModelController => _makeModelController.value;
  TextEditingController get journeyBeginController =>
      _journeyBeginController.value;
  TextEditingController get journeyEndController => _journeyEndController.value;
  TextEditingController get distanceTravelController =>
      _distanceTravelController.value;

  //Setter
  void setBusinessCategory(Category item) =>
      _businessSelectedCategory.value = item;
  void setBusinessCurrency(Currency item) =>
      _businessSelectedCurrency.value = item;

  //Travel dialog setter
  void setTravelSubsistence(SubsistenceClaim item) =>
      _travelSelectedSubsistence.value = item;
  void setTravelDurationAway(String item) =>
      _travelSelectedDurationAway.value = item;
  void setTravelLocation(Location item) => _travelSelectedLocation.value = item;
  void setTravelEngineSize(EngineSize item) =>
      _travelSelectedEngineSize.value = item;
  void setTravelSwitchBtnvalue(bool value) =>
      _travelSwitchBtnValue.value = value;

  @override
  void onInit() async {
    await getCurrencySymbol();
    await callExpenseDataApi();

    super.onInit();
  }

  //Home repository
  final HomeRepository _homeRepository = Get.put(HomeRepository());
  final ExpenseRepository _expenseRepository = Get.put(ExpenseRepository());

  //!----------------(Call expense data api)
  Future<void> callExpenseDataApi() async {
    _loading(true);
    try {
      //api called
      final res = await _homeRepository.expenseData();
      _expensesListFinal.value = res;

      getListOfYear();

      //set latest year data
      _expensesList.value = List.from(_expensesListFinal
          .where(
            (element) => element.year.toString() == _selectedYear.value,
          )
          .toList());
      _loading(false);
    } catch (e) {
      _loading(false);
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          callExpenseDataApi();
        },
      );
      log(e.toString(), name: "Expense controller");
    }
  }

//##############################################################################
//##############################################################################
//---------------------------------
//------------------Travel dialog section

//call save Travel expense
  void callSaveTravelExpense(String type, TravelRecord? recordData) {
    if (StringConst.edit == type) {
      callUploadEditedTravelExpenseDataApi(recordData!);
    } else {
      callUploadNewTravelExpenseDataApi();
    }
  }

//------------Call upload new Travel expense data api
  Future<void> callUploadNewTravelExpenseDataApi() async {
    bool? isValidForm = _travelDialogFormKey.currentState?.validate();
    if (isValidForm != true) {
      return;
    }

    if (_travelCheckbox1.value == false || _travelCheckbox2.value == false) {
      return;
    }
    _travelDialogFormKey.currentState?.save();

    String nights =
        _travelSelectedDurationAway.value.split(" ").toList()[0].trim();

    CommonWidget.loader();
    try {
      //api called
      final res = await _expenseRepository.uploadNewTravelExpenseData(
        _dateOfTravelStartController.value.text,
        _makeModelController.value.text,
        _whoClientController.value.text,
        _tripEndController.value.text,
        _travelSelectedEngineSize.value.id,
        _travelSelectedLocation.value.id ?? 0,
        _distanceTravelController.value.text,
        _journeyEndController.value.text,
        _journeyBeginController.value.text,
        nights,
        _purposeOfTripController.value.text,
        _tripBeginController.value.text,
        _netSubsistenceController.value.text,
        _travelSelectedSubsistence.value.typeID!,
        _travelSwitchBtnValue.value,
      );

      Get.back();
      Get.back();

      //---------update Expense year data
      _selectedYear.value = res.year!;
      filterExpensesByYear(_selectedYear.value);

      //-----------navigate to Expense month details page
      goToExpenseMonthDetails(
        (int.parse(res.month ?? "0")),
      );

      CommonWidget.callSnackBar(StringConst.successfullyUploaded);
      //------Reset form data
      resetTravelDialogFormData();
    } catch (e) {
      Get.back();
      CommonWidget.callSnackBar(e.toString(), true);
      log(e.toString(), name: "Expense controller-- Upload New Travel expense");
    }
  }

//------------Call upload edited Travel expense data api
  Future<void> callUploadEditedTravelExpenseDataApi(TravelRecord item) async {
    //-------Expense details controller
    final ExpenseDetailsController expensesDetailsController =
        Get.find<ExpenseDetailsController>();
    bool? isValidForm = _travelDialogFormKey.currentState?.validate();
    if (isValidForm != true) {
      return;
    }

    if (_travelCheckbox1.value == false || _travelCheckbox2.value == false) {
      return;
    }
    _travelDialogFormKey.currentState?.save();

    String nights =
        _travelSelectedDurationAway.value.split(" ").toList()[0].trim();

    //-------------get updated Travel record
    final TravelRecord updatedTravelRecord = updateTravelRecord(item, nights);
    CommonWidget.loader();
    try {
      //api called
      await _expenseRepository.uploadEditedTravelExpenseData(
        updatedTravelRecord,
      );
      Get.back();
      Get.back();
      //---------update Expense year data
      _selectedYear.value = item.incurred!.year.toString();

      //-----------Update Expense month details page
      await expensesDetailsController.callExpenseMonthDataApi();
      await callExpenseDataApi();
      filterExpensesByYear(_selectedYear.value);
      CommonWidget.callSnackBar(StringConst.successfullyUploaded);
      //------Reset form data
      resetTravelDialogFormData();
    } catch (e) {
      Get.back();
      CommonWidget.callSnackBar(e.toString(), true);
      log(e.toString(),
          name: "Expense controller-- Upload Edited Travel expense");
    }
  }

  //Update Travel Record item for edit
  TravelRecord updateTravelRecord(
    TravelRecord item,
    String nights,
  ) {
    return item = item.copyWith(
      car_make_model: _makeModelController.value.text,
      client: _whoClientController.value.text,
      end_location: _tripEndController.value.text,
      engine_size_id: _travelSelectedEngineSize.value.id,
      incurred: DateFormat(StringConst.dateFormat)
          .parse(_dateOfTravelStartController.value.text),
      location: _travelSelectedLocation.value.id.toString(),
      motor_distance: _distanceTravelController.value.text,
      motor_end_location: _journeyEndController.value.text,
      motor_start_location: _journeyBeginController.value.text,
      nights: num.parse(nights),
      purpose: _purposeOfTripController.value.text,
      rates_hours_5: _travelSelectedLocation.value.hours_5,
      rates_hours_10: _travelSelectedLocation.value.hours_10,
      rates_overnight: _travelSelectedLocation.value.overnight,
      rates_overnight_additional_subsistence_value:
          _travelSelectedLocation.value.overnight_2,
      start_location: _tripBeginController.value.text,
      subsistence: num.tryParse(_netSubsistenceController.value.text),
      type_id: _travelSelectedSubsistence.value.typeID,
      use_car: _travelSwitchBtnValue.value ? 1 : 0,
      rates_local_currency_id: _travelSelectedLocation.value.local_currency_id,
    );
  }

  //!----------------(Call Travel information api)
  Future<void> callTravelInformationApi() async {
    CommonWidget.loader();
    try {
      //api called
      final res = await _expenseRepository.travelInformationData();
      _travelInformationData.value = res;
      Get.back();
    } catch (e) {
      Get.back();
      log(e.toString(), name: "Expense controller-- Travel Information");
      throw e.toString();
    }
  }

  //!---------------Get Travel expense data by id api
  Future<TravelExpenseRecordModel> callTravelExpenseDataByIdApi(int id) async {
    CommonWidget.loader();
    try {
      //api called
      final res = await _expenseRepository.travelExpenseDataById(id);

      Get.back();
      return res;
    } catch (e) {
      Get.back();

      log(e.toString(), name: "Expense controller-- Travel Expense data by id");
      throw e.toString();
    }
  }

  //show Travel dialog for adding new travel expense
  void showTravelDialog(String name) async {
    //------Reset form data
    resetTravelDialogFormData();
    try {
      await callTravelInformationApi();
      Get.dialog(
        NewTravelDialog(
          type: StringConst.add,
          name: name,
        ),
      );
      //
      showConfirmationMessageDialog(
          StringConst.travelDialogConfirmationDialogText);
    } catch (e) {
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          showTravelDialog(name);
        },
      );
    }
  }

  //-----------show travel dialog for edit or view
  void showTravelDialogForEditView(
    String name,
    String type,
    int id,
  ) async {
    try {
      await callTravelInformationApi(); //--for all Location and engine size
      final item = await callTravelExpenseDataByIdApi(id);

      //------Set form data
      setTravelDialogFormData(item);
      Get.dialog(
        NewTravelDialog(
          type: type,
          name: name,
          recordData: item.record,
        ),
      );

      if (type == StringConst.edit) {
        showConfirmationMessageDialog(
            StringConst.travelDialogConfirmationDialogText);
      }
    } catch (e) {
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          showTravelDialogForEditView(
            name,
            type,
            id,
          );
        },
      );
    }
  }

  //-------Reset Business Dialog Form data
  void resetTravelDialogFormData() {
    _dateOfTravelStartController.value.text = "";
    _travelSelectedSubsistence.value = Constants.subsistenceList[0];
    _travelSelectedDurationAway.value = "";
    _whoClientController.value.text = "";
    _travelSelectedLocation.value = const Location();
    _netSubsistenceController.value.text = "";
    _purposeOfTripController.value.text = "";
    _tripBeginController.value.text = "";
    _tripEndController.value.text = "";
    _travelSwitchBtnValue(false);
    _makeModelController.value.text = "";
    _travelSelectedEngineSize.value = const EngineSize();
    _journeyBeginController.value.text = "";
    _journeyEndController.value.text = "";
    _distanceTravelController.value.text = "";

    _travelCheckbox1(false);
    _travelCheckbox2(false);
  }

  //-------Set Travel Dialog Form data for edit and view
  void setTravelDialogFormData(TravelExpenseRecordModel item) {
    //------set date
    final String dateString =
        DateFormat(StringConst.dateFormat).format(item.record!.incurred!);
    _dateOfTravelStartController.value.text = dateString;
    _travelSelectedSubsistence.value = Constants.subsistenceList.firstWhere(
      (element) => element.typeID == item.record?.type_id,
    );
    _travelSelectedDurationAway.value = Constants.durationAway.firstWhere(
      (element) =>
          element.split(" ").toList()[0].trim() ==
          item.record?.nights.toString(),
    );
    _whoClientController.value.text = item.record?.client ?? "";
    _travelSelectedLocation.value =
        _travelInformationData.value.locations!.firstWhere(
      (element) => element.id.toString() == item.record?.location,
    );
    _netSubsistenceController.value.text =
        item.record?.subsistence.toString() ?? "";
    _purposeOfTripController.value.text = item.record?.purpose ?? "";
    _tripBeginController.value.text = item.record?.start_location ?? "";
    _tripEndController.value.text = item.record?.end_location ?? "";
    _travelSwitchBtnValue.value = item.record?.use_car == 1 ? true : false;
    if (_travelSwitchBtnValue.value) {
      _makeModelController.value.text = item.record?.car_make_model ?? "";
      _travelSelectedEngineSize.value =
          _travelInformationData.value.engineSizes!.firstWhere(
        (element) => element.id == item.record?.engine_size_id,
      );
      _journeyBeginController.value.text =
          item.record?.motor_start_location ?? "";
      _journeyEndController.value.text = item.record?.motor_end_location ?? "";
      _distanceTravelController.value.text =
          item.record?.motor_distance.toString() ?? "";
    }

    _travelCheckbox1(true);
    _travelCheckbox2(true);
  }

  //Travel dialog field validator
  String? travelDialogFieldValidator(
    String val,
    String fieldName,
  ) {
    switch (fieldName) {
      case StringConst.travelDialogStartDateLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogTypeOfSubsistenceLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogDurationAwayLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogWhoClientLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogLocationLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogNetSubsistenceLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogPurposeOfTripLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogTripBeginLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogTripEndLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogMakeAndModelLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogEngineSizeLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogCarJourneyBeginLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogCarJourneyEndLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.travelDialogDistanceTravelLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        } else if (RegExp(r'^0+$').hasMatch(val)) {
          return StringConst.fieldRequired;
        }
        break;

      default:
        return null;
    }
    return null;
  }

  //select date
  Future<void> selectTravelStartDateAndConvertToString() async {
    final DateTime? selectedDate = DateFormat(StringConst.dateFormat)
        .tryParse(_dateOfTravelStartController.value.text);
    final DateTime? pickedDate = await CommonWidget.showDatePickerDialog(
      selectedDate,
    );

    if (pickedDate != null) {
      final String dateString =
          DateFormat(StringConst.dateFormat).format(pickedDate);
      _dateOfTravelStartController.value.text = dateString;
    }
  }

//update travel checkbox value
  void travelCheckBoxUpdate(String checkbox) {
    switch (checkbox) {
      case StringConst.travelDialogRadioBtnxt1:
        _travelCheckbox1.value = !_travelCheckbox1.value;
        break;
      case StringConst.travelDialogRadioBtnxt2:
        _travelCheckbox2.value = !_travelCheckbox2.value;
        break;
      default:
    }
  }

//Get converted euro price
  num getConvertedEuroBaseAmount() {
    num rate = travelSelectedLocation.rate ?? 0.0;
    num amount = 0.0;

    if (_travelSelectedLocation.value.name != null) {
      _travelSelectedLocation.value.toJson().forEach((key, value) {
        if (key == _travelSelectedSubsistence.value.id) {
          amount = value ?? 0;
        }
      });
    }
    var convertedvalue = amount * rate;

    //----------assign value to net subsistence field
    _netSubsistenceController.value.text = convertedvalue.toStringAsFixed(2);
    return convertedvalue;
  }

//Get converted euro price
  num getBaseAmount() {
    num amount = 0.0;

    if (_travelSelectedLocation.value.name != null) {
      _travelSelectedLocation.value.toJson().forEach((key, value) {
        if (key == _travelSelectedSubsistence.value.id) {
          amount = value ?? 0;
        }
      });
    }

    return amount;
  }

//--------------------------Travel dialog section End
//##############################################################################
//##############################################################################

//##############################################################################
//##############################################################################
//---------------------------------
//------------------Business dialog section

//call save business expense
  void callSaveBusinessExpense(String type, Record? recordData) {
    if (StringConst.edit == type) {
      callUploadEditedBusinessExpenseDataApi(recordData!);
    } else {
      callUploadNewBusinessExpenseDataApi();
    }
  }

//------------Call upload new business expense data api
  Future<void> callUploadNewBusinessExpenseDataApi() async {
    bool? isValidForm = _businessDialogFormKey.currentState?.validate();
    if (isValidForm != true) {
      return;
    }
    if (_businessFileNameList.isEmpty) {
      CommonWidget.errorPopUp(StringConst.kindlyUploadAnReciept);
      return;
    }
    if (_businessCheckbox1.value == false ||
        _businessCheckbox2.value == false) {
      return;
    }
    _businessDialogFormKey.currentState?.save();

    CommonWidget.loader();
    try {
      //api called
      final res = await _expenseRepository.uploadNewBusinessExpenseData(
        _businessSelectedCategory.value.id!,
        _businessSelectedCurrency.value.id!,
        _businessExpenseDetailsController.value.text,
        _uploadedBusinessFileIdList,
        _dateOfBusinessIncurredController.value.text,
        double.parse(_businessValueController.value.text),
      );

      Get.back();
      Get.back();

      //---------update Expense year data
      _selectedYear.value = res.year!;
      filterExpensesByYear(_selectedYear.value);

      //-----------navigate to Expense month details page
      goToExpenseMonthDetails(
        (int.parse(res.month ?? "0")),
      );

      CommonWidget.callSnackBar(StringConst.successfullyUploaded);
      //------Reset form data
      resetBusinessDialogFormData();
    } catch (e) {
      Get.back();
      CommonWidget.callSnackBar(e.toString(), true);
      log(e.toString(),
          name: "Expense controller-- Upload New business expense");
    }
  }

//------------Call upload edited business expense data api
  Future<void> callUploadEditedBusinessExpenseDataApi(Record item) async {
    //-------Expense details controller
    final ExpenseDetailsController expensesDetailsController =
        Get.find<ExpenseDetailsController>();
    bool? isValidForm = _businessDialogFormKey.currentState?.validate();
    if (isValidForm != true) {
      return;
    }
    if (_businessFileNameList.isEmpty) {
      CommonWidget.errorPopUp(StringConst.kindlyUploadAnReciept);
      return;
    }
    if (_businessCheckbox1.value == false ||
        _businessCheckbox2.value == false) {
      return;
    }
    _businessDialogFormKey.currentState?.save();

    //-------------get updated business record
    final Record updatedBusinessRecord = updateBusinessRecord(item);
    CommonWidget.loader();
    try {
      //api called
      await _expenseRepository.uploadEditedBusinessExpenseData(
        updatedBusinessRecord,
        _uploadedBusinessFileIdList,
        item.id!,
      );

      Get.back();
      Get.back();

      //---------update Expense year data
      _selectedYear.value = item.incurred!.year.toString();

      //-----------Update Expense month details page
      await expensesDetailsController.callExpenseMonthDataApi();
      await callExpenseDataApi();
      filterExpensesByYear(_selectedYear.value);

      CommonWidget.callSnackBar(StringConst.successfullyUploaded);
      //------Reset form data
      resetBusinessDialogFormData();
    } catch (e) {
      Get.back();
      CommonWidget.callSnackBar(e.toString(), true);
      log(e.toString(),
          name: "Expense controller-- Upload Edited business expense");
    }
  }

  //Update Business Record item for edit
  Record updateBusinessRecord(Record item) {
    return item = item.copyWith(
      type_id: _businessSelectedCategory.value.id!,
      currency_id: _businessSelectedCurrency.value.id!,
      description: _businessExpenseDetailsController.value.text,
      incurred: DateFormat(StringConst.dateFormat)
          .parse(_dateOfBusinessIncurredController.value.text),
      net: num.parse(_businessValueController.value.text),
    );
  }

  //!----------------(Call business information api)
  Future<void> callBusinessInformationApi() async {
    CommonWidget.loader();
    try {
      //api called
      final res = await _expenseRepository.businessInformationData();
      _businessInformationData.value = res;
      Get.back();
    } catch (e) {
      Get.back();
      log(e.toString(), name: "Expense controller-- Business Information");
      throw e.toString();
    }
  }

  //!---------------Get Business expense data by id api
  Future<BusinessExpenseRecordModel> callBusinessExpenseDataByIdApi(
      int id) async {
    CommonWidget.loader();
    try {
      //api called
      final res = await _expenseRepository.businessExpenseDataById(id);

      Get.back();
      return res;
    } catch (e) {
      Get.back();

      log(e.toString(),
          name: "Expense controller-- Business Expense data by id");
      throw e.toString();
    }
  }

  //!----------------(Call upload business file api)
  Future<void> callUploadBusinessFileApi(
    File file,
    String name,
  ) async {
    CommonWidget.loader();
    try {
      //api called
      final res = await _expenseRepository.uploadBusinessExpenseFile(
        file,
        name,
      );

      Get.back();
      //add uploaded item to list
      if (res.id != null) {
        _businessFileNameList.add(res.originalName ?? "");
        _uploadedBusinessFileIdList.add(res.id!);
        CommonWidget.callSnackBar(StringConst.successfullyUploaded);
      } else {
        CommonWidget.callSnackBar(StringConst.somethingWentWrong, true);
      }
      // return res;
    } catch (e) {
      Get.back();
      CommonWidget.callSnackBar(e.toString(), true);
      log(e.toString(), name: "Expense controller-- upload file");
    }
  }

  //!----------------(Call delete business file api)
  Future<void> callDeleteBusinessFileApi(
    int index,
  ) async {
    CommonWidget.loader();
    try {
      //api called
      await _expenseRepository
          .deleteBusinessExpenseFile(_uploadedBusinessFileIdList[index]);

      Get.back();

      //remove item from list
      _businessFileNameList.removeAt(index);
      _uploadedBusinessFileIdList.removeAt(index);
      CommonWidget.callSnackBar(StringConst.successfullyDeleted);

      // return res;
    } catch (e) {
      Get.back();
      CommonWidget.callSnackBar(e.toString(), true);
      log(e.toString(), name: "Expense controller-- delete file");
    }
  }

  //show business dialog for adding new business expense
  void showBusinessDialog(String name) async {
    //------Reset form data
    resetBusinessDialogFormData();
    try {
      await callBusinessInformationApi();
      Get.dialog(
        NewBusinessDialog(
          type: StringConst.add,
          name: name,
        ),
      );
      //
      showConfirmationMessageDialog(
          StringConst.businessDialogConfirmationDialogText);
    } catch (e) {
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          showBusinessDialog(name);
        },
      );
    }
  }

  //-----------show business dialog for edit or view
  void showBusinessDialogForEditView(
    String name,
    String type,
    int id,
  ) async {
    try {
      await callBusinessInformationApi(); //--for all category and currency
      final item = await callBusinessExpenseDataByIdApi(id);

      //------Set form data
      setBusinessDialogFormData(item);
      Get.dialog(
        NewBusinessDialog(
          type: type,
          name: name,
          recordData: item.record,
        ),
      );

      if (type == StringConst.edit) {
        showConfirmationMessageDialog(
            StringConst.businessDialogConfirmationDialogText);
      }
    } catch (e) {
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          showBusinessDialogForEditView(
            name,
            type,
            id,
          );
        },
      );
    }
  }

  //-------Reset Business Dialog Form data
  void resetBusinessDialogFormData() {
    _dateOfBusinessIncurredController.value.text = "";
    _businessSelectedCategory.value = const Category();
    _businessSelectedCurrency.value = const Currency();
    _businessValueController.value.text = "";
    _businessExpenseDetailsController.value.text = "";
    _convertedPrice.value = 0.0;
    _businessFileNameList.clear();
    _uploadedBusinessFileIdList.clear();
    _businessCheckbox1(false);
    _businessCheckbox2(false);
  }

  //-------Set Business Dialog Form data for edit and view
  void setBusinessDialogFormData(BusinessExpenseRecordModel item) {
    //------set date
    final String dateString =
        DateFormat(StringConst.dateFormat).format(item.record!.incurred!);
    _dateOfBusinessIncurredController.value.text = dateString;

    //-------set category and currency in the Dropddown
    _businessSelectedCategory.value = Category(
      id: item.record?.type_id,
      name: _businessInformationData.value.categories!
          .firstWhere(
            (category) => category.id == item.record?.type_id,
          )
          .name,
    );
    _businessSelectedCurrency.value = Currency(
      id: item.record?.currency_id,
      name: _businessInformationData.value.currencies!
          .firstWhere(
            (currency) => currency.id == item.record?.currency_id,
          )
          .name,
      rate: _businessInformationData.value.currencies!
          .firstWhere(
            (currency) => currency.id == item.record?.currency_id,
          )
          .rate,
    );

    _businessValueController.value.text =
        item.record?.net?.toDouble().toString() ?? "";

    _businessExpenseDetailsController.value.text =
        item.record?.description ?? "";
    setConvertedEuroPrice();

    //---set File data
    if (item.files!.isNotEmpty) {
      for (var file in item.files!) {
        _businessFileNameList.add(file.name ?? "");
        _uploadedBusinessFileIdList.add(file.id!);
      }
    }

    _businessCheckbox1(true);
    _businessCheckbox2(true);
  }

  //Business dialog field validator
  String? businessDialogFieldValidator(
    String val,
    String fieldName,
  ) {
    switch (fieldName) {
      case StringConst.businessDialogIncurredLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.businessDialogCategoryLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.businessDialogCurrencyLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.businessDialogValueLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        } else if (RegExp(r'^0+$').hasMatch(val)) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.businessDialogDetailsOfExpenseLabel:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;

      default:
        return null;
    }
    return null;
  }

  //select date
  Future<void> selectDateAndConvertToString() async {
    final DateTime? selectedDate = DateFormat(StringConst.dateFormat)
        .tryParse(_dateOfBusinessIncurredController.value.text);
    final DateTime? pickedDate = await CommonWidget.showDatePickerDialog(
      selectedDate,
    );

    if (pickedDate != null) {
      final String dateString =
          DateFormat(StringConst.dateFormat).format(pickedDate);
      _dateOfBusinessIncurredController.value.text = dateString;
    }
  }

//update checkbox value
  void businessCheckBoxUpdate(String checkbox) {
    switch (checkbox) {
      case StringConst.businessDialogRadioBtnxt1:
        _businessCheckbox1.value = !_businessCheckbox1.value;
        break;
      case StringConst.businessDialogRadioBtnxt2:
        _businessCheckbox2.value = !_businessCheckbox2.value;
        break;
      default:
    }
  }

//Get converted euro price
  void setConvertedEuroPrice() {
    final inputValue = _businessValueController.value.text.isEmpty
        ? "0"
        : _businessValueController.value.text;
    _convertedPrice.value =
        (num.parse(inputValue) * (_businessSelectedCurrency.value.rate ?? 1.0));
  }

//select and upload file for business expense
  void selectFileAndUpload() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      List<File> files = result.paths.map((path) => File(path ?? "")).toList();

      for (File file in files) {
        String name = file.path.split('/').last;
        bool exist = businessFileNameList.any((element) => element == name);
        if (!exist) {
          //call Api
          callUploadBusinessFileApi(file, name);
        }
      }
    }
  }

//--------------------------Business dialog section End
//##############################################################################
//##############################################################################

//Show expense dialog for edit or view
  void showExpenseDialogForEditOrView(
    String name, //--As Name (Business or Travel)
    String type,
    int id,
  ) async {
    switch (name) {
      case StringConst.businessStatus:
        //------Reset form data
        resetBusinessDialogFormData();
        //call API and business dialog
        showBusinessDialogForEditView(
          name,
          type,
          id,
        );

        break;
      case StringConst.travelStatus:

        //------Reset form data
        resetTravelDialogFormData();
        //call API and Travel dialog
        showTravelDialogForEditView(
          name,
          type,
          id,
        );
        break;
      default:
    }
  }

  //Get list of year
  void getListOfYear() {
    _yearList.value = [];
    for (var element in _expensesListFinal) {
      if (!_yearList.contains(
        element.year.toString(),
      )) {
        _yearList.add(
          element.year.toString(),
        );
      }
    }
    _yearList.sort((a, b) => b.compareTo(a));

    if (_yearList.isNotEmpty) {
      _selectedYear.value = _yearList[0];
    }
  }

  //Filter Expenses
  void filterExpensesByYear(String year) {
    _loading(true);
    _selectedYear.value = year;
    _expensesList.value = _expensesListFinal.where((element) {
      return element.year.toString() == year;
    }).toList();
    _loading(false);
  }

  //navigate to travel expense
  void navigateToExpense(String val) {
    switch (val) {
      case StringConst.businessExpenses:
        showBusinessDialog(StringConst.businessStatus);
        break;
      case StringConst.travelExpenses:
        showTravelDialog(StringConst.travelStatus);
        break;
      default:
    }
  }

//navigate to Expense month details page
  void goToExpenseMonthDetails(int monthId) {
    Get.toNamed(
      Routes.EXPENSE_DETAILS,
      arguments: {
        StringConst.monthId: monthId,
        StringConst.year: _selectedYear.value,
      },
    );
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
}
