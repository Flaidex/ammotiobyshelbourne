import 'package:ammotiobyshelbourne/app/modules/profile/controllers/profile_controller.dart';
import 'package:ammotiobyshelbourne/app/modules/profile/model/profile_model.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/text_form_field_widget.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dropdown_search/dropdown_search.dart';

class UpdateProfileDialog extends GetView<ProfileController> {
  UpdateProfileDialog({super.key});

  @override
  final ProfileController controller = Get.find<ProfileController>();

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
        _saveBtn(context),
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
            StringConst.editProfile,
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
    return Form(
      key: controller.updateProfileFormKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _label(StringConst.firstName),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.firstNameController,
              onchanged: (String? val) {},
              hintText: StringConst.firstName,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.firstName),
            ),
            KDimension().kHeight15,
            _label(StringConst.lastName),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.lastNameController,
              onchanged: (String? val) {},
              hintText: StringConst.lastName,
              enabledBorder: false,
              validator: (String? val) => controller
                  .updateProfileFieldValidator(val ?? "", StringConst.lastName),
            ),
            KDimension().kHeight15,
            _label(StringConst.email),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.emailController,
              onchanged: (String? val) {},
              inputType: TextInputType.emailAddress,
              hintText: StringConst.email,
              enabledBorder: true,
              disabledColor: true,
              readOnly: true,
              validator: (String? val) => controller
                  .updateProfileFieldValidator(val ?? "", StringConst.email),
            ),
            KDimension().kHeight15,
            _label(StringConst.phone),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.phoneController,
              onchanged: (String? val) {},
              hintText: StringConst.phone,
              inputType: TextInputType.phone,
              enabledBorder: false,
              validator: (String? val) => controller
                  .updateProfileFieldValidator(val ?? "", StringConst.phone),
            ),
            KDimension().kHeight15,
            _label(StringConst.address1),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.address1Controller,
              onchanged: (String? val) {},
              hintText: StringConst.address1,
              enabledBorder: false,
              validator: (String? val) => controller
                  .updateProfileFieldValidator(val ?? "", StringConst.address1),
            ),
            KDimension().kHeight15,
            _label(StringConst.address2),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.address2Controller,
              onchanged: (String? val) {},
              hintText: StringConst.address2,
              enabledBorder: false,
              validator: (String? val) => controller
                  .updateProfileFieldValidator(val ?? "", StringConst.address2),
            ),
            KDimension().kHeight15,
            _label(StringConst.address3),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.address3Controller,
              onchanged: (String? val) {},
              hintText: StringConst.address3,
              enabledBorder: false,
              validator: (String? val) => controller
                  .updateProfileFieldValidator(val ?? "", StringConst.address3),
            ),
            KDimension().kHeight15,
            _label(StringConst.address4),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.address4Controller,
              onchanged: (String? val) {},
              hintText: StringConst.address4,
              enabledBorder: false,
              validator: (String? val) => controller
                  .updateProfileFieldValidator(val ?? "", StringConst.address4),
            ),
            KDimension().kHeight15,
            _label(StringConst.dateOfBirth),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.dateOfBirthController,
              onchanged: (String? val) {},
              hintText: StringConst.dateOfBirth,
              enabledBorder: false,
              readOnly: true,
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.dateOfBirth),
              suffixWidget: IconButton(
                onPressed: () => controller.selectDateAndConvertToString(
                  StringConst.dateOfBirth,
                  controller.dateOfBirthController.text,
                ),
                icon: const Icon(
                  Icons.calendar_month,
                  color: AppColors.grey,
                ),
              ),
            ),
            KDimension().kHeight15,
            _label(StringConst.gender),
            KDimension().kHeight10,
            _dropdown(
              controller.gender,
              controller.profileData.genders,
              false,
              (selectedItem) => controller.assignGender(selectedItem),
              (selectedItem) => controller.updateProfileFieldValidator(
                  selectedItem?.name ?? "", StringConst.gender),
            ),
            KDimension().kHeight15,
            _label(StringConst.nationality),
            KDimension().kHeight10,
            _dropdown(
              controller.nationality,
              controller.profileData.countries,
              true,
              (selectedItem) => controller.assignNationality(selectedItem),
              (selectedItem) => controller.updateProfileFieldValidator(
                  selectedItem?.name ?? "", StringConst.nationality),
            ),
            KDimension().kHeight15,
            _label(StringConst.maritalStatus),
            KDimension().kHeight10,
            _dropdown(
              controller.maritalStatus,
              controller.profileData.marital_statuses,
              false,
              (selectedItem) => controller.assignMaritalStatus(selectedItem),
              (selectedItem) => controller.updateProfileFieldValidator(
                  selectedItem?.name ?? "", StringConst.maritalStatus),
            ),
            KDimension().kHeight15,
            _label(StringConst.spouseFirstName),
            KDimension().kHeight10,
            Obx(
              () => CustomTextFormField(
                controller: controller.spouseFirstNameController,
                onchanged: (String? val) {},
                hintText: StringConst.spouseFirstName,
                enabledBorder: !isMarried(controller.maritalStatus),
                disabledColor: !isMarried(controller.maritalStatus),
                readOnly: !isMarried(controller.maritalStatus),
                validator: (String? val) =>
                    controller.updateProfileFieldValidator(
                        val ?? "", StringConst.spouseFirstName),
              ),
            ),
            KDimension().kHeight15,
            _label(StringConst.spouseLastName),
            KDimension().kHeight10,
            Obx(() => CustomTextFormField(
                  controller: controller.spouseLastNameController,
                  onchanged: (String? val) {},
                  hintText: StringConst.spouseLastName,
                  enabledBorder: !isMarried(controller.maritalStatus),
                  disabledColor: !isMarried(controller.maritalStatus),
                  readOnly: !isMarried(controller.maritalStatus),
                  validator: (String? val) =>
                      controller.updateProfileFieldValidator(
                          val ?? "", StringConst.spouseLastName),
                )),
            KDimension().kHeight15,
            _label(StringConst.spouseMaidenName),
            KDimension().kHeight10,
            Obx(() => CustomTextFormField(
                  controller: controller.spouseMaidenNameController,
                  onchanged: (String? val) {},
                  hintText: StringConst.spouseMaidenName,
                  enabledBorder: !isMarried(controller.maritalStatus),
                  disabledColor: !isMarried(controller.maritalStatus),
                  readOnly: !isMarried(controller.maritalStatus),
                  validator: (String? val) =>
                      controller.updateProfileFieldValidator(
                          val ?? "", StringConst.spouseMaidenName),
                )),
            KDimension().kHeight15,
            _label(StringConst.ppsNumber),
            KDimension().kHeight10,
            Obx(() => CustomTextFormField(
                  controller: controller.ppsNumberController,
                  onchanged: (String? val) {},
                  hintText: StringConst.ppsNumber,
                  enabledBorder: !isMarried(controller.maritalStatus),
                  disabledColor: !isMarried(controller.maritalStatus),
                  readOnly: !isMarried(controller.maritalStatus),
                  validator: (String? val) =>
                      controller.updateProfileFieldValidator(
                          val ?? "", StringConst.ppsNumber),
                )),
            KDimension().kHeight15,
            _label(StringConst.dateOfMarriage),
            KDimension().kHeight10,
            Obx(() => CustomTextFormField(
                  controller: controller.dateOfMarriageController,
                  onchanged: (String? val) {},
                  hintText: StringConst.dateOfMarriage,
                  enabledBorder: !isMarried(controller.maritalStatus),
                  disabledColor: !isMarried(controller.maritalStatus),
                  readOnly: true,
                  validator: (String? val) =>
                      controller.updateProfileFieldValidator(
                          val ?? "", StringConst.dateOfMarriage),
                  suffixWidget: IconButton(
                    onPressed: () => controller.selectDateAndConvertToString(
                      StringConst.dateOfMarriage,
                      controller.dateOfMarriageController.text,
                    ),
                    icon: const Icon(
                      Icons.calendar_month,
                      color: AppColors.grey,
                    ),
                  ),
                )),
            KDimension().kHeight15,
            _label(StringConst.dateOfSeparation),
            KDimension().kHeight10,
            Obx(() => CustomTextFormField(
                  controller: controller.dateOfSeparationController,
                  onchanged: (String? val) {},
                  hintText: StringConst.dateOfSeparation,
                  enabledBorder: !isDivorced(controller.maritalStatus),
                  disabledColor: !isDivorced(controller.maritalStatus),
                  readOnly: true,
                  validator: (String? val) =>
                      controller.updateProfileFieldValidator(
                          val ?? "", StringConst.dateOfSeparation),
                  suffixWidget: IconButton(
                    onPressed: () => controller.selectDateAndConvertToString(
                      StringConst.dateOfSeparation,
                      controller.dateOfSeparationController.text,
                    ),
                    icon: const Icon(
                      Icons.calendar_month,
                      color: AppColors.grey,
                    ),
                  ),
                )),
            KDimension().kHeight15,
            _label(
              StringConst.companyName,
              isCompulsory: false,
            ),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.companyNameController,
              onchanged: (String? val) {},
              hintText: StringConst.companyName,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.companyName),
            ),
            KDimension().kHeight15,
            _label(
              StringConst.croNumber,
              isCompulsory: false,
            ),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.croNumberController,
              onchanged: (String? val) {},
              hintText: StringConst.croNumber,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.croNumber),
            ),
            KDimension().kHeight15,
            _label(
              StringConst.taxRegistration,
              isCompulsory: false,
            ),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.taxRegistrationController,
              onchanged: (String? val) {},
              hintText: StringConst.taxRegistration,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.taxRegistration),
            ),
            KDimension().kHeight15,
            _label(
              StringConst.comAddress1,
              isCompulsory: false,
            ),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.comAddress1Controller,
              onchanged: (String? val) {},
              hintText: StringConst.comAddress1,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.comAddress1),
            ),
            KDimension().kHeight15,
            _label(
              StringConst.comAddress2,
              isCompulsory: false,
            ),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.comAddress2Controller,
              onchanged: (String? val) {},
              hintText: StringConst.comAddress2,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.comAddress2),
            ),
            KDimension().kHeight15,
            _label(
              StringConst.comAddress3,
              isCompulsory: false,
            ),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.comAddress3Controller,
              onchanged: (String? val) {},
              hintText: StringConst.comAddress3,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.comAddress3),
            ),
            KDimension().kHeight15,
            _label(
              StringConst.comAddress4,
              isCompulsory: false,
            ),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.comAddress4Controller,
              onchanged: (String? val) {},
              hintText: StringConst.comAddress4,
              enabledBorder: false,
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.comAddress4),
            ),
            KDimension().kHeight15,
            _label(StringConst.comCountry),
            KDimension().kHeight10,
            _dropdown(
              controller.companyCountry,
              controller.profileData.countries,
              true,
              (selectedItem) => controller.assignCompanyCountry(selectedItem),
              (selectedItem) => controller.updateProfileFieldValidator(
                  selectedItem?.name ?? "", StringConst.comCountry),
            ),
            KDimension().kHeight15,
            _label(StringConst.dateOfInc),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.dateOfIncController,
              onchanged: (String? val) {},
              hintText: StringConst.dateOfInc,
              enabledBorder: false,
              readOnly: true,
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.dateOfInc),
              suffixWidget: IconButton(
                onPressed: () => controller.selectDateAndConvertToString(
                  StringConst.dateOfInc,
                  controller.dateOfIncController.text,
                ),
                icon: const Icon(
                  Icons.calendar_month,
                  color: AppColors.grey,
                ),
              ),
            ),
            KDimension().kHeight15,
            _label(StringConst.financialYearEnd),
            KDimension().kHeight10,
            CustomTextFormField(
              controller: controller.financialYearEndController,
              onchanged: (String? val) {},
              hintText: StringConst.financialYearEnd,
              enabledBorder: false,
              readOnly: true,
              suffixWidget: IconButton(
                onPressed: () => controller.selectDateAndConvertToString(
                  StringConst.financialYearEnd,
                  controller.financialYearEndController.text,
                ),
                icon: const Icon(
                  Icons.calendar_month,
                  color: AppColors.grey,
                ),
              ),
              validator: (String? val) =>
                  controller.updateProfileFieldValidator(
                      val ?? "", StringConst.financialYearEnd),
            ),
            KDimension().kHeight15,
          ],
        ),
      ),
    );
  }

  //Build Dropdown
  Widget _dropdown(
    IdName selectedItem,
    List<IdName>? list,
    bool showSearch,
    Function(IdName?)? onChanged,
    String? Function(IdName?)? validator,
  ) {
    return DropdownSearch<IdName>(
      selectedItem: selectedItem.name == null ? null : selectedItem,
      items: list ?? [],
      itemAsString: (IdName item) => item.name ?? "",
      dropdownDecoratorProps: Constants.dropDownStyle,
      onChanged: onChanged,
      validator: validator,
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
      onPressed: () {
        controller.callUpdateProfileApi();
      },
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
