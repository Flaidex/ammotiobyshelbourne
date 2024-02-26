import 'dart:developer';

import 'package:ammotiobyshelbourne/app/data/data-sources/profile_datasource.dart';
import 'package:ammotiobyshelbourne/app/modules/profile/model/profile_model.dart';
import 'package:get/get.dart';

class ProfileRepository {
  final ProfileDataSource _profileDataSource = Get.put(ProfileDataSource());
  //profile Data
  Future<ProfileModel> profileData() async {
    try {
      final ProfileModel response = await _profileDataSource.profileData();
      return response;
    } catch (e) {
      log(e.toString(), error: "ProfileRepository");
      rethrow;
    }
  }

  //Change password
  Future<void> changePassword(
    String currentPass,
    String newPass,
  ) async {
    try {
      await _profileDataSource.changePassword(
        currentPass,
        newPass,
      );
    } catch (e) {
      log(e.toString(), error: "ProfileRepository");
      rethrow;
    }
  }

  //updateProfile
  Future<void> updateProfile(
    IdName maritalStatus,
    String fName,
    String lName,
    String email,
    String phone,
    String address1,
    String address2,
    String address3,
    String address4,
    String cAddress1,
    String cAddress2,
    String cAddress3,
    String cAddress4,
    int? cCountryId,
    String croNumber,
    DateTime dateOfInc,
    DateTime financialYearEnd,
    int? comId,
    String cName,
    String taxRegNumber,
    String dateOfBirth,
    String dateOfMarriage,
    String dateOfSeparation,
    int? genderId,
    int? nationalityId,
    String spouseFirstName,
    String spouseLastName,
    String spouseMaidenName,
    String ppsNumber,
  ) async {
    try {
      await _profileDataSource.updateProfile(
        maritalStatus,
        fName,
        lName,
        email,
        phone,
        address1,
        address2,
        address3,
        address4,
        cAddress1,
        cAddress2,
        cAddress3,
        cAddress4,
        cCountryId,
        croNumber,
        dateOfInc,
        financialYearEnd,
        comId,
        cName,
        taxRegNumber,
        dateOfBirth,
        dateOfMarriage,
        dateOfSeparation,
        genderId,
        nationalityId,
        spouseFirstName,
        spouseLastName,
        spouseMaidenName,
        ppsNumber,
      );
    } catch (e) {
      log(e.toString(), error: "ProfileRepository");
      rethrow;
    }
  }
}
