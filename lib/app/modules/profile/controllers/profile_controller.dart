// ignore_for_file: unnecessary_string_escapes

import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/repositorys/profile_repository.dart';
import 'package:ammotiobyshelbourne/app/modules/profile/model/profile_model.dart';
import 'package:ammotiobyshelbourne/app/modules/profile/widgets/change_pass_dialog.dart';
import 'package:ammotiobyshelbourne/app/modules/profile/widgets/update_profile_dialog.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/common_widget.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProfileController extends GetxController {
  final Rx<ProfileModel> _profileData = const ProfileModel().obs;
  final RxBool _loading = false.obs;
  final GlobalKey<FormState> _changePassFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _updateProfileFormKey = GlobalKey<FormState>();
  final Rx<TextEditingController> _currentPassController =
      TextEditingController().obs;
  final Rx<TextEditingController> _newPassController =
      TextEditingController().obs;
  final Rx<TextEditingController> _confirmPassController =
      TextEditingController().obs;

  //Update profile data textEditingController
  final Rx<TextEditingController> _firstNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> _lastNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> _emailController =
      TextEditingController().obs;
  final Rx<TextEditingController> _phoneController =
      TextEditingController().obs;
  final Rx<TextEditingController> _address1Controller =
      TextEditingController().obs;
  final Rx<TextEditingController> _address2Controller =
      TextEditingController().obs;
  final Rx<TextEditingController> _address3Controller =
      TextEditingController().obs;
  final Rx<TextEditingController> _address4Controller =
      TextEditingController().obs;
  final Rx<TextEditingController> _spouseFirstNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> _spouseLastNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> _spouseMaidenNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> _ppsNumberController =
      TextEditingController().obs;
  final Rx<TextEditingController> _companyNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> _croNumberController =
      TextEditingController().obs;
  final Rx<TextEditingController> _taxRagistrationController =
      TextEditingController().obs;
  final Rx<TextEditingController> _comAddress1Controller =
      TextEditingController().obs;
  final Rx<TextEditingController> _comAddress2Controller =
      TextEditingController().obs;
  final Rx<TextEditingController> _comAddress3Controller =
      TextEditingController().obs;
  final Rx<TextEditingController> _comAddress4Controller =
      TextEditingController().obs;
  final Rx<TextEditingController> _dateOfBirthController =
      TextEditingController().obs;
  final Rx<IdName> _gender = const IdName().obs;
  final Rx<IdName> _nationality = const IdName().obs;
  final Rx<IdName> _maritalStatus = const IdName().obs;
  final Rx<IdName> _companyCountry = const IdName().obs;
  final Rx<TextEditingController> _dateOfMarriageController =
      TextEditingController().obs;
  final Rx<TextEditingController> _dateOfSeparationController =
      TextEditingController().obs;
  final Rx<TextEditingController> _dateOfIncController =
      TextEditingController().obs;
  final Rx<TextEditingController> _financialYearEndController =
      TextEditingController().obs;

  //Getter
  ProfileModel get profileData => _profileData.value;
  bool get loading => _loading.value;
  GlobalKey<FormState> get changePassFormKey => _changePassFormKey;
  GlobalKey<FormState> get updateProfileFormKey => _updateProfileFormKey;

  //change password dialog
  TextEditingController get currentPassController =>
      _currentPassController.value;
  TextEditingController get newPassController => _newPassController.value;
  TextEditingController get confirmPassController =>
      _confirmPassController.value;

  //Update profile data textEditingController getter
  TextEditingController get firstNameController => _firstNameController.value;
  TextEditingController get lastNameController => _lastNameController.value;
  TextEditingController get emailController => _emailController.value;
  TextEditingController get phoneController => _phoneController.value;
  TextEditingController get address1Controller => _address1Controller.value;
  TextEditingController get address2Controller => _address2Controller.value;
  TextEditingController get address3Controller => _address3Controller.value;
  TextEditingController get address4Controller => _address4Controller.value;
  TextEditingController get spouseFirstNameController =>
      _spouseFirstNameController.value;
  TextEditingController get spouseLastNameController =>
      _spouseLastNameController.value;
  TextEditingController get spouseMaidenNameController =>
      _spouseMaidenNameController.value;
  TextEditingController get ppsNumberController => _ppsNumberController.value;
  TextEditingController get companyNameController =>
      _companyNameController.value;
  TextEditingController get croNumberController => _croNumberController.value;
  TextEditingController get taxRegistrationController =>
      _taxRagistrationController.value;
  TextEditingController get comAddress1Controller =>
      _comAddress1Controller.value;
  TextEditingController get comAddress2Controller =>
      _comAddress2Controller.value;
  TextEditingController get comAddress3Controller =>
      _comAddress3Controller.value;
  TextEditingController get comAddress4Controller =>
      _comAddress4Controller.value;

  IdName get gender => _gender.value;
  IdName get nationality => _nationality.value;
  IdName get maritalStatus => _maritalStatus.value;
  IdName get companyCountry => _companyCountry.value;
  TextEditingController get dateOfBirthController =>
      _dateOfBirthController.value;
  TextEditingController get dateOfMarriageController =>
      _dateOfMarriageController.value;
  TextEditingController get dateOfSeparationController =>
      _dateOfSeparationController.value;
  TextEditingController get dateOfIncController => _dateOfIncController.value;
  TextEditingController get financialYearEndController =>
      _financialYearEndController.value;

  //setter
  void assignGender(IdName? item) {
    _gender.value = item ?? const IdName();
  }

  void assignNationality(IdName? item) {
    _nationality.value = item ?? const IdName();
  }

  void assignMaritalStatus(IdName? item) {
    _maritalStatus.value = item ?? const IdName();
  }

  void assignCompanyCountry(IdName? item) {
    _companyCountry.value = item ?? const IdName();
  }

  @override
  void onInit() async {
    await callProfileDataApi();
    // print(DateFormat)
    super.onInit();
  }

  //Profile repository
  final ProfileRepository _profileRepository = Get.put(ProfileRepository());

  //!----------------(Call Profile data api)
  Future<void> callProfileDataApi() async {
    _loading(true);
    try {
      //api called
      _profileData.value = await _profileRepository.profileData();
      assignProfileData(_profileData.value);
      _loading(false);
    } catch (e) {
      _loading(false);
      CommonWidget.responseErrorPopUp(
        e.toString(),
        () {
          Get.back();
          callProfileDataApi();
        },
      );
      log(e.toString(), name: "Profile controller");
    }
  }

  //!----------------(call change password  api)
  Future<void> callChangePassApi() async {
    final bool isValid = _changePassFormKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    _changePassFormKey.currentState?.save();
    CommonWidget.loader();
    try {
      //api called
      await _profileRepository.changePassword(
        _currentPassController.value.text,
        _newPassController.value.text,
      );
      Get.back();
      Get.back();
      CommonWidget.callSnackBar(
        StringConst.passwordUpdated,
      );
    } catch (e) {
      Get.back();
      CommonWidget.errorPopUp(e.toString());
    }
  }

  //!----------------(call update profile  api)
  Future<void> callUpdateProfileApi() async {
    final bool isValid =
        _updateProfileFormKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    _updateProfileFormKey.currentState?.save();
    CommonWidget.loader();

//--------convert to DateTime
    final dateOfIncDate = DateFormat(StringConst.dateFormat)
        .parse(_dateOfIncController.value.text);
    final financialYearDate = DateFormat(StringConst.dateFormat)
        .parse(_financialYearEndController.value.text);
    //
    try {
      //api called
      await _profileRepository.updateProfile(
        maritalStatus,
        _firstNameController.value.text,
        _lastNameController.value.text,
        _emailController.value.text,
        _phoneController.value.text,
        _address1Controller.value.text,
        _address2Controller.value.text,
        _address3Controller.value.text,
        _address4Controller.value.text,
        _comAddress1Controller.value.text,
        _comAddress2Controller.value.text,
        _comAddress3Controller.value.text,
        _comAddress4Controller.value.text,
        _companyCountry.value.id,
        _croNumberController.value.text,
        dateOfIncDate,
        financialYearDate,
        _profileData.value.company?.id,
        _companyNameController.value.text,
        _taxRagistrationController.value.text,
        _dateOfBirthController.value.text,
        _dateOfMarriageController.value.text,
        _dateOfSeparationController.value.text,
        _gender.value.id,
        _nationality.value.id,
        _spouseFirstNameController.value.text,
        _spouseLastNameController.value.text,
        _spouseMaidenNameController.value.text,
        _ppsNumberController.value.text,
      );
      Get.back();
      Get.back();
      await callProfileDataApi();
      CommonWidget.callSnackBar(
        StringConst.profileUpdated,
      );
    } catch (e) {
      Get.back();
      CommonWidget.errorPopUp(e.toString());
    }
  }

  //Assign profile data
  void assignProfileData(ProfileModel data) {
    _firstNameController.value.text = data.first_name ?? "";
    _lastNameController.value.text = data.last_name ?? "";
    _emailController.value.text = data.email ?? "";
    _phoneController.value.text = data.phone ?? "";
    _address1Controller.value.text = data.address_1 ?? "";
    _address2Controller.value.text = data.address_2 ?? "";
    _address3Controller.value.text = data.address_3 ?? "";
    _address4Controller.value.text = data.address_4 ?? "";
    _spouseFirstNameController.value.text = data.spouse_first_name ?? "";
    _spouseLastNameController.value.text = data.spouse_last_name ?? "";
    _spouseMaidenNameController.value.text = data.spouse_maiden_name ?? "";
    _ppsNumberController.value.text = data.pps_number ?? "";
    _companyNameController.value.text = data.company?.name ?? "";
    _croNumberController.value.text = data.company?.cro_number ?? "";
    _taxRagistrationController.value.text = data.company?.vat_number ?? "";
    _comAddress1Controller.value.text = data.company?.address_1 ?? "";
    _comAddress2Controller.value.text = data.company?.address_2 ?? "";
    _comAddress3Controller.value.text = data.company?.address_4 ?? "";
    _comAddress4Controller.value.text = data.company?.address_4 ?? "";

    //DROPDOWN VALUE
    assignGender(data.gender);
    assignNationality(data.nationality);
    assignMaritalStatus(data.marital_status);
    assignCompanyCountry(data.company?.country);

    //Assign date
    _dateOfBirthController.value.text = data.date_of_birth == null
        ? ""
        : data.date_of_birth!.replaceAll("'\'", "");
    _dateOfMarriageController.value.text = data.date_of_marriage == null
        ? ""
        : data.date_of_marriage!.replaceAll("'\'", "");
    _dateOfSeparationController.value.text = data.date_of_separation == null
        ? ""
        : data.date_of_separation!.replaceAll("'\'", "");

    _dateOfIncController.value.text =
        data.company?.date_of_incorporation == null || data.company == null
            ? ""
            : DateFormat(StringConst.dateFormat)
                .format(data.company!.date_of_incorporation!);
    _financialYearEndController.value.text =
        data.company?.financial_year_end == null || data.company == null
            ? ""
            : DateFormat(StringConst.dateFormat)
                .format(data.company!.financial_year_end!);
  }

  //show change password dialog
  void showChangePassDialog() {
    Get.dialog(ChangePasswordDialog());
  }

  //show update profile dialog
  void showUpdateProfileDialog() {
    assignProfileData(_profileData.value);
    Get.dialog(
      UpdateProfileDialog(),
    );
  }

  //Update profile field validator
  String? updateProfileFieldValidator(String val, String fieldName) {
    switch (fieldName) {
      case StringConst.firstName:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.lastName:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.phone:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.address1:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.address2:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.address3:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.address4:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.dateOfBirth:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.gender:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.nationality:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.maritalStatus:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      //
      case StringConst.spouseFirstName:
        if (val.isEmpty && _maritalStatus.value.id == 2) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.spouseLastName:
        if (val.isEmpty && _maritalStatus.value.id == 2) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.spouseMaidenName:
        if (val.isEmpty && _maritalStatus.value.id == 2) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.ppsNumber:
        if (val.isEmpty && _maritalStatus.value.id == 2) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.dateOfMarriage:
        if (val.isEmpty && _maritalStatus.value.id == 2) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.dateOfSeparation:
        if (val.isEmpty &&
            _maritalStatus.value.id != 1 &&
            _maritalStatus.value.id != 2 &&
            _maritalStatus.value.id != null) {
          return StringConst.fieldRequired;
        }
        break;
      //
      // case StringConst.comCountry:
      //   if (val.isEmpty) {
      //     return StringConst.fieldRequired;
      //   }
      //   break;
      // case StringConst.croNumber:
      //   if (val.isEmpty) {
      //     return StringConst.fieldRequired;
      //   }
      //   break;
      // case StringConst.taxRegistration:
      //   if (val.isEmpty) {
      //     return StringConst.fieldRequired;
      //   }
      //   break;
      // case StringConst.comAddress1:
      //   if (val.isEmpty) {
      //     return StringConst.fieldRequired;
      //   }
      //   break;
      // case StringConst.comAddress2:
      //   if (val.isEmpty) {
      //     return StringConst.fieldRequired;
      //   }
      //   break;
      // case StringConst.comAddress3:
      //   if (val.isEmpty) {
      //     return StringConst.fieldRequired;
      //   }
      //   break;
      // case StringConst.comAddress4:
      //   if (val.isEmpty) {
      //     return StringConst.fieldRequired;
      //   }
      //   break;
      // case StringConst.dateOfInc:
      //   if (val.isEmpty) {
      //     return StringConst.fieldRequired;
      //   }
      //   break;
      // case StringConst.financialYearEnd:
      //   if (val.isEmpty) {
      //     return StringConst.fieldRequired;
      //   }
      //   break;

      default:
        return null;
    }
    return null;
  }

  //select date
  Future<void> selectDateAndConvertToString(
    String key,
    String selectedDateString,
  ) async {
    final DateTime? selectedDate =
        DateFormat(StringConst.dateFormat).tryParse(selectedDateString);
    final DateTime? pickedDate = await CommonWidget.showDatePickerDialog(
      selectedDate,
    );

    if (pickedDate != null) {
      final String dateString =
          DateFormat(StringConst.dateFormat).format(pickedDate);
      switch (key) {
        case StringConst.dateOfBirth:
          _dateOfBirthController.value.text = dateString;
          break;
        case StringConst.dateOfMarriage:
          _dateOfMarriageController.value.text = dateString;
          break;
        case StringConst.dateOfSeparation:
          _dateOfSeparationController.value.text = dateString;
          break;
        case StringConst.dateOfInc:
          _dateOfIncController.value.text = dateString;
          break;
        case StringConst.financialYearEnd:
          _financialYearEndController.value.text = dateString;
          break;

        default:
      }
    }
  }

  //password field validator
  String? changePasswordFieldValidator(String val, String fieldName) {
    switch (fieldName) {
      case StringConst.currentPassword:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        }
        break;
      case StringConst.newPassword:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        } else if (val.length < 6) {
          return StringConst.minimumSixChar;
        }
        break;
      case StringConst.confirmPassword:
        if (val.isEmpty) {
          return StringConst.fieldRequired;
        } else if (_newPassController.value.text !=
            _confirmPassController.value.text) {
          return StringConst.passwordNotMatched;
        }
        break;
      default:
        return null;
    }
    return null;
  }
}
