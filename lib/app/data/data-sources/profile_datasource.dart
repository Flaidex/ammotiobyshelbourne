import 'dart:developer';
import 'package:ammotiobyshelbourne/app/data/services/profile_service.dart';
import 'package:ammotiobyshelbourne/app/modules/profile/model/profile_model.dart';
import 'package:ammotiobyshelbourne/app/utils/common/model/error_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ProfileDataSource {
  final ProfileServices _profileServices = Get.put(ProfileServices());

  //profile Data
  Future<ProfileModel> profileData() async {
    try {
      final response = await _profileServices.profileData();

      final ProfileModel model = ProfileModel.fromJson(response.data);
      return model;
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        rethrow;
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
    }
  }

  //Change password
  Future<void> changePassword(
    String currentPass,
    String newPass,
  ) async {
    try {
      await _profileServices.changePassword(
        currentPass,
        newPass,
      );
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        final error = ErrorModel.fromJson(e.response!.data);
        throw error.errors?[0] ?? e.toString();
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
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
      await _profileServices.updateProfile(
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
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
        final error = ErrorModel.fromJson(e.response!.data);
        throw error.errors?[0] ?? e.toString();
      } else {
        log('Dio request failed due to an exception: $e');
        rethrow;
      }
    }
  }
}
