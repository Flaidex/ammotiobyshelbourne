// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['id'] as int?,
      internal_identity: json['internal_identity'] as String?,
      status: json['status'] as int?,
      admin_group_id: json['admin_group_id'] as int?,
      permission_group_id: json['permission_group_id'] as int?,
      username: json['username'] as String?,
      u_username: json['u_username'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      company_id: json['company_id'] as int?,
      profession_id: json['profession_id'] as int?,
      agency_id: json['agency_id'] as int?,
      pps_number: json['pps_number'] as String?,
      crew_code: json['crew_code'] as String?,
      nationality_id: json['nationality_id'] as int?,
      date_of_birth: json['date_of_birth'] as String?,
      gender_id: json['gender_id'] as int?,
      marital_status_id: json['marital_status_id'] as int?,
      spouse_first_name: json['spouse_first_name'] as String?,
      spouse_last_name: json['spouse_last_name'] as String?,
      spouse_pps_number: json['spouse_pps_number'] as String?,
      spouse_maiden_name: json['spouse_maiden_name'] as String?,
      spouse_id: json['spouse_id'] as int?,
      email: json['email'] as String?,
      dialing_code: json['dialing_code'] as String?,
      phone: json['phone'] as String?,
      address_1: json['address_1'] as String?,
      address_2: json['address_2'] as String?,
      address_3: json['address_3'] as String?,
      address_4: json['address_4'] as String?,
      country_id: json['country_id'],
      base: json['base'],
      position_id: json['position_id'],
      date_of_marriage: json['date_of_marriage'] as String?,
      date_of_separation: json['date_of_separation'],
      proprietary_director: json['proprietary_director'] as int?,
      date_of_appointment: json['date_of_appointment'] as String?,
      date_of_resignation: json['date_of_resignation'],
      share_holding: (json['share_holding'] as num?)?.toDouble(),
      location_id: json['location_id'],
      make_model: json['make_model'] as String?,
      engine_size_id: json['engine_size_id'],
      vat_rate: json['vat_rate'] as int?,
      pension: json['pension'] as int?,
      fee_amount: json['fee_amount'] as int?,
      fee_percent: json['fee_percent'] as int?,
      currency_id: json['currency_id'] as int?,
      notes: json['notes'],
      national_insurance_number: json['national_insurance_number'] as String?,
      import_cplus: json['import_cplus'] as int?,
      category_id: json['category_id'],
      new_ammotio_import: json['new_ammotio_import'],
      last_login: json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deleted_at: json['deleted_at'],
      password_reset_token: json['password_reset_token'],
      password_reset_date: json['password_reset_date'],
      notifications_payslips: json['notifications_payslips'],
      notifications_working_hours: json['notifications_working_hours'],
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      country: json['country'],
      gender: json['gender'] == null
          ? null
          : IdName.fromJson(json['gender'] as Map<String, dynamic>),
      marital_status: json['marital_status'] == null
          ? null
          : IdName.fromJson(json['marital_status'] as Map<String, dynamic>),
      genders: (json['genders'] as List<dynamic>?)
          ?.map((e) => IdName.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => IdName.fromJson(e as Map<String, dynamic>))
          .toList(),
      positions: (json['positions'] as List<dynamic>?)
          ?.map((e) => Position.fromJson(e as Map<String, dynamic>))
          .toList(),
      marital_statuses: (json['marital_statuses'] as List<dynamic>?)
          ?.map((e) => IdName.fromJson(e as Map<String, dynamic>))
          .toList(),
      nationality: json['nationality'] == null
          ? null
          : IdName.fromJson(json['nationality'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'internal_identity': instance.internal_identity,
      'status': instance.status,
      'admin_group_id': instance.admin_group_id,
      'permission_group_id': instance.permission_group_id,
      'username': instance.username,
      'u_username': instance.u_username,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'company_id': instance.company_id,
      'profession_id': instance.profession_id,
      'agency_id': instance.agency_id,
      'pps_number': instance.pps_number,
      'crew_code': instance.crew_code,
      'nationality_id': instance.nationality_id,
      'date_of_birth': instance.date_of_birth,
      'gender_id': instance.gender_id,
      'marital_status_id': instance.marital_status_id,
      'spouse_first_name': instance.spouse_first_name,
      'spouse_last_name': instance.spouse_last_name,
      'spouse_pps_number': instance.spouse_pps_number,
      'spouse_maiden_name': instance.spouse_maiden_name,
      'spouse_id': instance.spouse_id,
      'email': instance.email,
      'dialing_code': instance.dialing_code,
      'phone': instance.phone,
      'address_1': instance.address_1,
      'address_2': instance.address_2,
      'address_3': instance.address_3,
      'address_4': instance.address_4,
      'country_id': instance.country_id,
      'base': instance.base,
      'position_id': instance.position_id,
      'date_of_marriage': instance.date_of_marriage,
      'date_of_separation': instance.date_of_separation,
      'proprietary_director': instance.proprietary_director,
      'date_of_appointment': instance.date_of_appointment,
      'date_of_resignation': instance.date_of_resignation,
      'share_holding': instance.share_holding,
      'location_id': instance.location_id,
      'make_model': instance.make_model,
      'engine_size_id': instance.engine_size_id,
      'vat_rate': instance.vat_rate,
      'pension': instance.pension,
      'fee_amount': instance.fee_amount,
      'fee_percent': instance.fee_percent,
      'currency_id': instance.currency_id,
      'notes': instance.notes,
      'national_insurance_number': instance.national_insurance_number,
      'import_cplus': instance.import_cplus,
      'category_id': instance.category_id,
      'new_ammotio_import': instance.new_ammotio_import,
      'last_login': instance.last_login?.toIso8601String(),
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'deleted_at': instance.deleted_at,
      'password_reset_token': instance.password_reset_token,
      'password_reset_date': instance.password_reset_date,
      'notifications_payslips': instance.notifications_payslips,
      'notifications_working_hours': instance.notifications_working_hours,
      'company': instance.company,
      'country': instance.country,
      'gender': instance.gender,
      'marital_status': instance.marital_status,
      'genders': instance.genders,
      'countries': instance.countries,
      'positions': instance.positions,
      'marital_statuses': instance.marital_statuses,
      'nationality': instance.nationality,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      cro_number: json['cro_number'] as String?,
      vat_number: json['vat_number'] as String?,
      date_of_incorporation: json['date_of_incorporation'] == null
          ? null
          : DateTime.parse(json['date_of_incorporation'] as String),
      financial_year_end: json['financial_year_end'] == null
          ? null
          : DateTime.parse(json['financial_year_end'] as String),
      address_1: json['address_1'] as String?,
      address_2: json['address_2'] as String?,
      address_3: json['address_3'] as String?,
      address_4: json['address_4'] as String?,
      country_id: json['country_id'] as int?,
      admin_group_id: json['admin_group_id'] as int?,
      import_cplus: json['import_cplus'] as bool?,
      country: json['country'] == null
          ? null
          : IdName.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cro_number': instance.cro_number,
      'vat_number': instance.vat_number,
      'date_of_incorporation':
          instance.date_of_incorporation?.toIso8601String(),
      'financial_year_end': instance.financial_year_end?.toIso8601String(),
      'address_1': instance.address_1,
      'address_2': instance.address_2,
      'address_3': instance.address_3,
      'address_4': instance.address_4,
      'country_id': instance.country_id,
      'admin_group_id': instance.admin_group_id,
      'import_cplus': instance.import_cplus,
      'country': instance.country,
    };

_$IdNameImpl _$$IdNameImplFromJson(Map<String, dynamic> json) => _$IdNameImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$IdNameImplToJson(_$IdNameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$PositionImpl _$$PositionImplFromJson(Map<String, dynamic> json) =>
    _$PositionImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      admin_group_id: json['admin_group_id'] as int?,
    );

Map<String, dynamic> _$$PositionImplToJson(_$PositionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'admin_group_id': instance.admin_group_id,
    };
