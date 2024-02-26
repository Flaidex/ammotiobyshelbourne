// ignore_for_file: library_prefixes

import 'package:ammotiobyshelbourne/app/modules/expenses/controllers/expenses_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-information/business_information_model.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/text_form_field_widget.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:ammotiobyshelbourne/app/modules/expenses/model/business-expense-record/business_expense_record_model.dart'
    as businessRecord;

class NewBusinessDialog extends GetView<ExpensesController> {
  const NewBusinessDialog({
    super.key,
    required this.type,
    required this.name,
    this.recordData,
  });

  final String type;
  final String name;
  final businessRecord.Record? recordData;

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
      key: controller.businessDialogFormKey,
      child: SingleChildScrollView(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _label(StringConst.businessDialogIncurredLabel),
              KDimension().kHeight10,
              Obx(() => CustomTextFormField(
                    controller: controller.dateOfBusinessIncurredController,
                    onchanged: (String? val) {},
                    hintText: StringConst.dateFormat.toUpperCase(),
                    enabledBorder: isViewOnly,
                    disabledColor: isViewOnly,
                    readOnly: true,
                    validator: (String? val) =>
                        controller.businessDialogFieldValidator(
                            val ?? "", StringConst.businessDialogIncurredLabel),
                    suffixWidget: IconButton(
                      onPressed: () {
                        if (!isViewOnly) {
                          controller.selectDateAndConvertToString();
                        }
                      },
                      icon: const Icon(
                        Icons.calendar_month,
                        color: AppColors.blue,
                      ),
                    ),
                  )),
              KDimension().kHeight15,
              _label(StringConst.businessDialogCategoryLabel),
              KDimension().kHeight10,
              _dropdownCategories(
                controller.businessSelectedCategory,
                controller.businessInformationData.categories,
                false,
                (selectedItem) => controller.setBusinessCategory(selectedItem!),
                (selectedItem) => controller.businessDialogFieldValidator(
                  selectedItem?.name ?? "",
                  StringConst.businessDialogCategoryLabel,
                ),
                !isViewOnly,
              ),
              KDimension().kHeight15,
              _label(StringConst.businessDialogCurrencyLabel),
              KDimension().kHeight10,
              _dropdownCurrency(
                controller.businessSelectedCurrency,
                controller.businessInformationData.currencies,
                true,
                (selectedItem) {
                  controller.setBusinessCurrency(selectedItem!);
                  controller.setConvertedEuroPrice();
                },
                (selectedItem) => controller.businessDialogFieldValidator(
                  selectedItem?.name ?? "",
                  StringConst.businessDialogCurrencyLabel,
                ),
                !isViewOnly,
              ),
              KDimension().kHeight15,
              _label(StringConst.businessDialogValueLabel),
              KDimension().kHeight10,
              CustomTextFormField(
                controller: controller.businessValueController,
                onchanged: (String? val) => controller.setConvertedEuroPrice(),
                inputType: const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}$')),
                ],
                hintText: "",
                enabledBorder: isViewOnly,
                disabledColor: isViewOnly,
                readOnly: isViewOnly,
                validator: (String? val) =>
                    controller.businessDialogFieldValidator(
                        val ?? "", StringConst.businessDialogValueLabel),
                suffixWidget: _euroValueSuffixWidget(),
              ),
              KDimension().kHeight15,
              _label(StringConst.businessDialogDetailsOfExpenseLabel),
              KDimension().kHeight10,
              CustomTextFormField(
                controller: controller.businessExpenseDetailsController,
                onchanged: (String? val) {},
                hintText: StringConst.businessDialogDetailsOfExpenseHint,
                enabledBorder: isViewOnly,
                disabledColor: isViewOnly,
                readOnly: isViewOnly,
                validator: (String? val) =>
                    controller.businessDialogFieldValidator(val ?? "",
                        StringConst.businessDialogDetailsOfExpenseLabel),
              ),
              KDimension().kHeight15,
              _label(StringConst.businessDialogUploadRecieptLabel),

              //---------Build upload file section
              KDimension().kHeight10,
              _uploadAttachmentWidget(isViewOnly),

              //----------build chcekbox
              KDimension().kHeight15,
              Obx(
                () => _buildCheckBox(
                  StringConst.businessDialogRadioBtnxt1,
                  controller.businessCheckbox1,
                  (val) {
                    if (!isViewOnly) {
                      controller.businessCheckBoxUpdate(
                          StringConst.businessDialogRadioBtnxt1);
                    }
                  },
                ),
              ),
              KDimension().kHeight05,
              Obx(
                () => _buildCheckBox(
                  StringConst.businessDialogRadioBtnxt2,
                  controller.businessCheckbox2,
                  (val) {
                    if (!isViewOnly) {
                      controller.businessCheckBoxUpdate(
                          StringConst.businessDialogRadioBtnxt2);
                    }
                  },
                ),
              ),

              controller.businessCheckbox1 == false ||
                      controller.businessCheckbox2 == false
                  ? _buildMustSelectAll()
                  : const SizedBox(),
              KDimension().kHeight10,
            ],
          ),
        ),
      ),
    );
  }

  //Upload attachment section widget
  Widget _uploadAttachmentWidget(bool isViewOnly) {
    return GestureDetector(
      onTap: () {
        if (!isViewOnly) {
          controller.selectFileAndUpload();
        }
      },
      child: Container(
        height: 160,
        width: Get.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: const BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _uploadAttachmentHint(),
              KDimension().kHeight05,
              //----------List of selected reciepts
              if (controller.businessFileNameList.isNotEmpty)
                _listOfSelectedReciepts(),
            ],
          ),
        ),
      ),
    );
  }

  //List of selected reciepts
  Widget _listOfSelectedReciepts() {
    return Expanded(
      child: Obx(
        () => ListView.builder(
          itemCount: controller.businessFileNameList.length,
          itemBuilder: (ctx, i) => _recieptItem(i),
        ),
      ),
    );
  }

  //Reciept item widget
  Widget _recieptItem(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              controller.businessFileNameList[index],
              overflow: TextOverflow.ellipsis,
              style: Get.textTheme.bodySmall?.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
          KDimension().kWidth10,
          GestureDetector(
            onTap: () => controller.callDeleteBusinessFileApi(index),
            child: const Icon(
              Icons.close,
              size: 15,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  //upload attachment hint
  Widget _uploadAttachmentHint() {
    return Text(
      StringConst.businessDialogAttachmentHint,
      textAlign: TextAlign.center,
      style: Get.textTheme.bodySmall?.copyWith(
        color: AppColors.white,
        fontSize: 11,
      ),
    );
  }

//Euro value suffix widget
  Container _euroValueSuffixWidget() {
    return Container(
      width: 110,
      decoration: BoxDecoration(
          color: AppColors.greyShade200,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1,
            color: AppColors.greyShade400,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 90,
            child: Obx(() => FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "= ${controller.convertedPrice.toStringAsFixed(2)} EUR",
                    style: Get.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
        ],
      ),
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
  Widget _dropdownCategories(
    Category selectedItem,
    List<Category>? list,
    bool showSearch,
    Function(Category?)? onChanged,
    String? Function(Category?)? validator,
    bool enabled,
  ) {
    return DropdownSearch<Category>(
      selectedItem: selectedItem.name == null ? null : selectedItem,
      items: list ?? [],
      itemAsString: (Category item) => item.name ?? "",
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
  Widget _dropdownCurrency(
    Currency selectedItem,
    List<Currency>? list,
    bool showSearch,
    Function(Currency?)? onChanged,
    String? Function(Currency?)? validator,
    bool enabled,
  ) {
    return DropdownSearch<Currency>(
      selectedItem: selectedItem.name == null ? null : selectedItem,
      items: list ?? [],
      itemAsString: (Currency item) => item.name ?? "",
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
      onPressed: () => controller.callSaveBusinessExpense(type, recordData),
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
