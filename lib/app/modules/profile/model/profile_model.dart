// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    int? id,
    String? internal_identity,
    int? status,
    int? admin_group_id,
    int? permission_group_id,
    String? username,
    String? u_username,
    String? first_name,
    String? last_name,
    int? company_id,
    int? profession_id,
    int? agency_id,
    String? pps_number,
    String? crew_code,
    int? nationality_id,
    String? date_of_birth,
    int? gender_id,
    int? marital_status_id,
    String? spouse_first_name,
    String? spouse_last_name,
    String? spouse_pps_number,
    String? spouse_maiden_name,
    int? spouse_id,
    String? email,
    String? dialing_code,
    String? phone,
    String? address_1,
    String? address_2,
    String? address_3,
    String? address_4,
    dynamic country_id,
    dynamic base,
    dynamic position_id,
    String? date_of_marriage,
    dynamic date_of_separation,
    int? proprietary_director,
    String? date_of_appointment,
    dynamic date_of_resignation,
    double? share_holding,
    dynamic location_id,
    String? make_model,
    dynamic engine_size_id,
    int? vat_rate,
    int? pension,
    int? fee_amount,
    int? fee_percent,
    int? currency_id,
    dynamic notes,
    String? national_insurance_number,
    int? import_cplus,
    dynamic category_id,
    dynamic new_ammotio_import,
    DateTime? last_login,
    DateTime? created_at,
    DateTime? updated_at,
    dynamic deleted_at,
    dynamic password_reset_token,
    dynamic password_reset_date,
    dynamic notifications_payslips,
    dynamic notifications_working_hours,
    Company? company,
    dynamic country,
    IdName? gender,
    IdName? marital_status,
    List<IdName>? genders,
    List<IdName>? countries,
    List<Position>? positions,
    List<IdName>? marital_statuses,
    IdName? nationality,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    int? id,
    String? name,
    String? cro_number,
    String? vat_number,
    DateTime? date_of_incorporation,
    DateTime? financial_year_end,
    String? address_1,
    String? address_2,
    String? address_3,
    String? address_4,
    int? country_id,
    int? admin_group_id,
    bool? import_cplus,
    IdName? country,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}

@freezed
class IdName with _$IdName {
  const factory IdName({
    int? id,
    String? name,
  }) = _IdName;

  factory IdName.fromJson(Map<String, dynamic> json) => _$IdNameFromJson(json);
}

@freezed
class Position with _$Position {
  const factory Position({
    int? id,
    String? name,
    int? admin_group_id,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}
