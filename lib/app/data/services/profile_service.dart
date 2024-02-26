import 'package:ammotiobyshelbourne/app/modules/profile/model/profile_model.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../utils/api_constants.dart';
import '../dio_base_service.dart';

class ProfileServices extends DioBaseService {
  final Dio _dio = DioBaseService.dio;

  //profile Data
  Future<Response> profileData() async {
    try {
      return await _dio.get(
        ApiConst.profileEndpoint,
      );
    } catch (e) {
      rethrow;
    }
  }

  //changePassword
  Future<Response> changePassword(
    String currentPass,
    String newPass,
  ) async {
    final Object body = <String, String>{
      "current_password": currentPass,
      "new_password": newPass,
    };
    try {
      final res = await _dio.post(
        ApiConst.changePasswordEndpoint,
        data: body,
      );
      return res;
    } catch (e) {
      rethrow;
    }
  }

  //updateProfile
  Future<Response> updateProfile(
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
    final Object body = <String, dynamic>{
      'address_1': address1,
      'address_2': address2,
      'address_3': address3,
      'address_4': address4,
      'company_address_1': cAddress1,
      'company_address_2': cAddress2,
      'company_address_3': cAddress3,
      'company_address_4': cAddress4,
      'company_country_id': cCountryId,
      'company_cro_number': croNumber,
      'company_date_of_inc': dateOfInc.toIso8601String(),
      'company_financial_year_end': financialYearEnd.toIso8601String(),
      'company_id': comId,
      'company_name': cName,
      'company_vat_number': taxRegNumber,
      'date_of_birth': DateFormat("yyyy-MM-dd")
          .format(DateFormat(StringConst.dateFormat).parse(dateOfBirth)),
      'email': email,
      'first_name': fName,
      'gender_id': genderId,
      'last_name': lName,
      'marital_status_id': maritalStatus.id,
      'nationality_id': nationalityId,
      'phone': phone,
      'spouse_first_name': isMarried(maritalStatus) ? spouseFirstName : null,
      'spouse_last_name': isMarried(maritalStatus) ? spouseLastName : null,
      'spouse_maiden_name': isMarried(maritalStatus) ? spouseMaidenName : null,
      'spouse_pps_number': isMarried(maritalStatus) ? ppsNumber : null,
      'date_of_marriage': isMarried(maritalStatus)
          ? DateFormat("yyyy-MM-dd")
              .format(DateFormat(StringConst.dateFormat).parse(dateOfMarriage))
          : null,
      'date_of_separation': isDivorced(maritalStatus)
          ? DateFormat("yyyy-MM-dd").format(
              DateFormat(StringConst.dateFormat).parse(dateOfSeparation))
          : null,
    };

    try {
      final res = await _dio.post(
        ApiConst.profileEndpoint,
        data: body,
      );
      return res;
    } catch (e) {
      rethrow;
    }
  }
}
