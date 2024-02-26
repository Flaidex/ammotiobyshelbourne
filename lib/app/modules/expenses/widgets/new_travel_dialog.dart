import 'package:ammotiobyshelbourne/app/modules/expenses/controllers/expenses_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/travel-expense-record/travel_expense_record_model.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/travel-information/travel_information_model.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/text_form_field_widget.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dropdown_search/dropdown_search.dart';

class NewTravelDialog extends GetView<ExpensesController> {
  const NewTravelDialog({
    super.key,
    required this.type,
    required this.name,
    this.recordData,
  });

  final String type;
  final String name;
  final TravelRecord? recordData;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.greyShade100,
      insetPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      titlePadding: const EdgeInsets.only(left: 15, right: 15, top: 20),
      title: _title(),
      content: _content(context),
      actions: [
        _cancelBtn(),
        KDimension().kWidth05,
        if (type != StringConst.view) _saveBtn(context),
      ],
    );
  }

//----------Title
  SizedBox _title() {
    return SizedBox(
      height: 40,
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$type $name ${StringConst.expense.toLowerCase()}",
            style: Get.textTheme.headlineSmall,
          ),
          IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Get.back();
              })
        ],
      ),
    );
  }

//------------Content
  Widget _content(BuildContext context) {
    bool isViewOnly = type == StringConst.view;
    return Form(
      key: controller.travelDialogFormKey,
      child: SingleChildScrollView(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _label(StringConst.travelDialogStartDateLabel),
              KDimension().kHeight10,
              Obx(() => CustomTextFormField(
                    controller: controller.dateOfTravelStartController,
                    onchanged: (String? val) {},
                    hintText: StringConst.dateFormat.toUpperCase(),
                    enabledBorder: isViewOnly,
                    disabledColor: isViewOnly,
                    readOnly: true,
                    validator: (String? val) =>
                        controller.travelDialogFieldValidator(
                            val ?? "", StringConst.travelDialogStartDateLabel),
                    suffixWidget: IconButton(
                      onPressed: () {
                        if (!isViewOnly) {
                          controller.selectTravelStartDateAndConvertToString();
                        }
                      },
                      icon: const Icon(
                        Icons.calendar_month,
                        color: AppColors.blue,
                      ),
                    ),
                  )),
              KDimension().kHeight15,
              _label(StringConst.travelDialogTypeOfSubsistenceLabel),
              KDimension().kHeight10,
              _dropdownSubsistenceClaim(
                controller.travelSelectedSubsistence,
                Constants.subsistenceList,
                false,
                (selectedItem) {
                  controller.setTravelSubsistence(selectedItem!);
                  controller.getConvertedEuroBaseAmount();
                },
                (selectedItem) => controller.travelDialogFieldValidator(
                  selectedItem?.name ?? "",
                  StringConst.travelDialogTypeOfSubsistenceLabel,
                ),
                !isViewOnly,
              ),
              KDimension().kHeight15,
              _label(StringConst.travelDialogDurationAwayLabel),
              KDimension().kHeight10,
              _dropdownDurationAway(
                controller.travelSelectedDurationAway,
                Constants.durationAway,
                false,
                (selectedItem) {
                  controller.setTravelDurationAway(selectedItem!);
                },
                (selectedItem) => controller.travelDialogFieldValidator(
                  selectedItem ?? "",
                  StringConst.travelDialogDurationAwayLabel,
                ),
                !isViewOnly,
              ),

              KDimension().kHeight15,
              _label(StringConst.travelDialogWhoClientLabel),
              KDimension().kHeight10,
              CustomTextFormField(
                controller: controller.whoClientController,
                onchanged: (String? val) {},
                enabledBorder: isViewOnly,
                disabledColor: isViewOnly,
                readOnly: isViewOnly,
                validator: (String? val) =>
                    controller.travelDialogFieldValidator(
                        val ?? "", StringConst.travelDialogWhoClientLabel),
              ),
              KDimension().kHeight15,
              _label(StringConst.travelDialogLocationLabel),
              KDimension().kHeight10,
              _dropdownLocation(
                controller.travelSelectedLocation,
                controller.travelInformationData.locations,
                true,
                (selectedItem) {
                  controller.setTravelLocation(selectedItem!);
                  controller.getConvertedEuroBaseAmount();
                },
                (selectedItem) => controller.travelDialogFieldValidator(
                  selectedItem?.name ?? "",
                  StringConst.travelDialogLocationLabel,
                ),
                !isViewOnly,
              ),
              if (controller.travelSelectedLocation.name != null)
                _buildBaseAmountSection(controller.travelSelectedLocation),
              KDimension().kHeight15,
              _label(StringConst.travelDialogNetSubsistenceLabel),
              KDimension().kHeight10,
              CustomTextFormField(
                controller: controller.netSubsistenceController,
                onchanged: (String? val) {},
                enabledBorder: true,
                disabledColor: false,
                readOnly: true,
                suffixWidget: Icon(
                  Icons.euro_rounded,
                  color: AppColors.darkBlue,
                ),
                validator: (String? val) =>
                    controller.travelDialogFieldValidator(
                        val ?? "", StringConst.travelDialogNetSubsistenceLabel),
              ),
              KDimension().kHeight15,
              _label(StringConst.travelDialogPurposeOfTripLabel),
              KDimension().kHeight10,
              CustomTextFormField(
                controller: controller.purposeOfTripController,
                onchanged: (String? val) {},
                enabledBorder: isViewOnly,
                disabledColor: isViewOnly,
                readOnly: isViewOnly,
                validator: (String? val) =>
                    controller.travelDialogFieldValidator(
                        val ?? "", StringConst.travelDialogPurposeOfTripLabel),
              ),
              KDimension().kHeight15,
              _label(StringConst.travelDialogTripBeginLabel),
              KDimension().kHeight10,
              CustomTextFormField(
                controller: controller.tripBeginController,
                onchanged: (String? val) {},
                enabledBorder: isViewOnly,
                disabledColor: isViewOnly,
                readOnly: isViewOnly,
                validator: (String? val) =>
                    controller.travelDialogFieldValidator(
                        val ?? "", StringConst.travelDialogTripBeginLabel),
              ),
              KDimension().kHeight15,
              _label(StringConst.travelDialogTripEndLabel),
              KDimension().kHeight10,
              CustomTextFormField(
                controller: controller.tripEndController,
                onchanged: (String? val) {},
                enabledBorder: isViewOnly,
                disabledColor: isViewOnly,
                readOnly: isViewOnly,
                validator: (String? val) =>
                    controller.travelDialogFieldValidator(
                        val ?? "", StringConst.travelDialogTripEndLabel),
              ),

              Obx(() => SwitchListTile(
                    trackOutlineColor:
                        MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColors.primaryColor;
                        }
                        return AppColors.grey;
                      },
                    ),
                    thumbColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColors.white;
                        }
                        return AppColors.primaryColor;
                      },
                    ),
                    inactiveTrackColor: AppColors.white,
                    title: const Text(
                        StringConst.travelDialogPrivateCarSwitchLabel),
                    value: controller.travelSwitchBtnValue,
                    onChanged: (bool value) =>
                        controller.setTravelSwitchBtnvalue(value),
                  )),

              if (controller.travelSwitchBtnValue)
                _privateCarTextFieldSection(isViewOnly),
              //----------build chcekbox
              KDimension().kHeight05,
              Obx(
                () => _buildCheckBox(
                  StringConst.travelDialogRadioBtnxt1,
                  controller.travelCheckbox1,
                  (val) {
                    if (!isViewOnly) {
                      controller.travelCheckBoxUpdate(
                          StringConst.travelDialogRadioBtnxt1);
                    }
                  },
                ),
              ),
              KDimension().kHeight05,
              Obx(
                () => _buildCheckBox(
                  StringConst.travelDialogRadioBtnxt2,
                  controller.travelCheckbox2,
                  (val) {
                    if (!isViewOnly) {
                      controller.travelCheckBoxUpdate(
                          StringConst.travelDialogRadioBtnxt2);
                    }
                  },
                ),
              ),

              controller.travelCheckbox1 == false ||
                      controller.travelCheckbox2 == false
                  ? _buildMustSelectAll()
                  : const SizedBox(),
              KDimension().kHeight10,
            ],
          ),
        ),
      ),
    );
  }

  //Private car used textField section
  Widget _privateCarTextFieldSection(bool isViewOnly) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _label(StringConst.travelDialogMakeAndModelLabel),
        KDimension().kHeight10,
        CustomTextFormField(
          controller: controller.makeModelController,
          onchanged: (String? val) {},
          enabledBorder: isViewOnly,
          disabledColor: isViewOnly,
          readOnly: isViewOnly,
          validator: (String? val) => controller.travelDialogFieldValidator(
              val ?? "", StringConst.travelDialogMakeAndModelLabel),
        ),
        KDimension().kHeight15,
        _label(StringConst.travelDialogEngineSizeLabel),
        KDimension().kHeight10,
        _dropdownEngineSize(
          controller.travelSelectedEngineSize,
          controller.travelInformationData.engineSizes,
          false,
          (selectedItem) {
            controller.setTravelEngineSize(selectedItem!);
          },
          (selectedItem) => controller.travelDialogFieldValidator(
            selectedItem?.name ?? "",
            StringConst.travelDialogEngineSizeLabel,
          ),
          !isViewOnly,
        ),
        KDimension().kHeight15,
        _label(StringConst.travelDialogCarJourneyBeginLabel),
        KDimension().kHeight10,
        CustomTextFormField(
          controller: controller.journeyBeginController,
          onchanged: (String? val) {},
          enabledBorder: isViewOnly,
          disabledColor: isViewOnly,
          readOnly: isViewOnly,
          validator: (String? val) => controller.travelDialogFieldValidator(
              val ?? "", StringConst.travelDialogCarJourneyBeginLabel),
        ),
        KDimension().kHeight15,
        _label(StringConst.travelDialogCarJourneyEndLabel),
        KDimension().kHeight10,
        CustomTextFormField(
          controller: controller.journeyEndController,
          onchanged: (String? val) {},
          enabledBorder: isViewOnly,
          disabledColor: isViewOnly,
          readOnly: isViewOnly,
          validator: (String? val) => controller.travelDialogFieldValidator(
              val ?? "", StringConst.travelDialogCarJourneyEndLabel),
        ),
        KDimension().kHeight15,
        _label(StringConst.travelDialogDistanceTravelLabel),
        KDimension().kHeight10,
        CustomTextFormField(
          controller: controller.distanceTravelController,
          onchanged: (String? val) {},
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}$')),
          ],
          hintText: "Kilometer",
          inputType: TextInputType.number,
          inputAction: TextInputAction.done,
          enabledBorder: isViewOnly,
          disabledColor: isViewOnly,
          readOnly: isViewOnly,
          validator: (String? val) => controller.travelDialogFieldValidator(
              val ?? "", StringConst.travelDialogDistanceTravelLabel),
        ),
      ],
    );
  }

  //Build Base Amount
  Widget _buildBaseAmountSection(Location item) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KDimension().kHeight15,
        _label(StringConst.baseAmount),
        KDimension().kHeight05,
        Row(
          children: [
            Text(
              "${controller.getConvertedEuroBaseAmount().toStringAsFixed(2)} EUR",
              style: Get.textTheme.bodyLarge?.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            KDimension().kWidth10,
            Text(
              "( ${controller.getBaseAmount().toStringAsFixed(2)}${item.currency_code} )",
              style: Get.textTheme.bodyLarge?.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

//Checkbox widget
  Widget _buildCheckBox(
      String title, bool value, void Function(bool? val) onChanged) {
    return CheckboxListTile(
      title: Text(
        title,
        style: Get.textTheme.bodySmall,
      ),
      fillColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryColor; // Fill color when checked
          }
          return AppColors.greyShade100; // Defaults to no color
        },
      ),
      value: value,
      selected: value,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: onChanged,
    );
  }

  //Build must select all text
  Widget _buildMustSelectAll() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        StringConst.businessDialogRadioBtnError,
        style: Get.textTheme.bodyMedium?.copyWith(
          color: AppColors.darkRed,
        ),
      ),
    );
  }

  //Build Dropdown
  Widget _dropdownLocation(
    Location selectedItem,
    List<Location>? list,
    bool showSearch,
    Function(Location?)? onChanged,
    String? Function(Location?)? validator,
    bool enabled,
  ) {
    return DropdownSearch<Location>(
      selectedItem: selectedItem.name == null ? null : selectedItem,
      items: list ?? [],
      itemAsString: (Location item) => "${item.country} (${item.name})",
      dropdownDecoratorProps: Constants.dropDownStyle,
      onChanged: onChanged,
      validator: validator,
      enabled: enabled,
      popupProps: PopupProps.menu(
        constraints:
            showSearch ? Constants.constraintsH400 : Constants.constraintsH200,
        showSearchBox: showSearch,
        searchFieldProps: Constants.searchStyle,
        searchDelay: const Duration(milliseconds: 5),
        containerBuilder: (context, popupWidget) {
          return Container(
            color: AppColors.lighterGrey,
            child: ListTile(
              title: popupWidget,
            ),
          );
        },
      ),
    );
  }

  //Build Dropdown
  Widget _dropdownEngineSize(
    EngineSize selectedItem,
    List<EngineSize>? list,
    bool showSearch,
    Function(EngineSize?)? onChanged,
    String? Function(EngineSize?)? validator,
    bool enabled,
  ) {
    return DropdownSearch<EngineSize>(
      selectedItem: selectedItem.name == null ? null : selectedItem,
      items: list ?? [],
      itemAsString: (EngineSize item) => item.name ?? "",
      dropdownDecoratorProps: Constants.dropDownStyle,
      onChanged: onChanged,
      validator: validator,
      enabled: enabled,
      popupProps: PopupProps.menu(
        constraints:
            showSearch ? Constants.constraintsH400 : Constants.constraintsH200,
        showSearchBox: showSearch,
        searchFieldProps: Constants.searchStyle,
        searchDelay: const Duration(milliseconds: 5),
        containerBuilder: (context, popupWidget) {
          return Container(
            color: AppColors.lighterGrey,
            child: ListTile(
              title: popupWidget,
            ),
          );
        },
      ),
    );
  }

  //Build Dropdown
  Widget _dropdownSubsistenceClaim(
    SubsistenceClaim selectedItem,
    List<SubsistenceClaim>? list,
    bool showSearch,
    Function(SubsistenceClaim?)? onChanged,
    String? Function(SubsistenceClaim?)? validator,
    bool enabled,
  ) {
    return DropdownSearch<SubsistenceClaim>(
      selectedItem: selectedItem.name == null ? null : selectedItem,
      items: list ?? [],
      itemAsString: (SubsistenceClaim item) => item.name ?? "",
      dropdownDecoratorProps: Constants.dropDownStyle,
      onChanged: onChanged,
      validator: validator,
      enabled: enabled,
      popupProps: PopupProps.menu(
        constraints:
            showSearch ? Constants.constraintsH400 : Constants.constraintsH200,
        showSearchBox: showSearch,
        searchFieldProps: Constants.searchStyle,
        searchDelay: const Duration(milliseconds: 5),
        containerBuilder: (context, popupWidget) {
          return Container(
            color: AppColors.lighterGrey,
            child: ListTile(
              title: popupWidget,
            ),
          );
        },
      ),
    );
  }

  //Build Dropdown
  Widget _dropdownDurationAway(
    String selectedItem,
    List<String>? list,
    bool showSearch,
    Function(String?)? onChanged,
    String? Function(String?)? validator,
    bool enabled,
  ) {
    return DropdownSearch<String>(
      selectedItem: selectedItem.isEmpty ? null : selectedItem,
      items: list ?? [],
      itemAsString: (String item) => item,
      dropdownDecoratorProps: Constants.dropDownStyle,
      onChanged: onChanged,
      validator: validator,
      enabled: enabled,
      popupProps: PopupProps.menu(
        constraints:
            showSearch ? Constants.constraintsH400 : Constants.constraintsH200,
        showSearchBox: showSearch,
        searchFieldProps: Constants.searchStyle,
        searchDelay: const Duration(milliseconds: 5),
        containerBuilder: (context, popupWidget) {
          return Container(
            color: AppColors.lighterGrey,
            child: ListTile(
              title: popupWidget,
            ),
          );
        },
      ),
    );
  }

  //build label
  Widget _label(String label, {bool? isCompulsory}) {
    return Text(
      isCompulsory == false ? label : "$label*",
      style: Get.textTheme.bodyMedium?.copyWith(
        color: AppColors.darkGrey,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  TextButton _saveBtn(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.greyShade300,
      ),
      child: Container(
        width: 80,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            StringConst.save,
            style: Get.textTheme.bodyLarge?.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
      onPressed: () => controller.callSaveTravelExpense(type, recordData),
    );
  }

  TextButton _cancelBtn() {
    return TextButton(
      onPressed: () {
        Get.back();
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.greyShade300,
      ),
      child: Container(
        width: 80,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                StringConst.cancel,
                style: Get.textTheme.bodyLarge?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
