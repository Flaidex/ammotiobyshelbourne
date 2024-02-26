// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_expense_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelExpenseRecordModelImpl _$$TravelExpenseRecordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelExpenseRecordModelImpl(
      test: json['test'] as int?,
      local_rate: json['local_rate'] as String?,
      record: json['record'] == null
          ? null
          : TravelRecord.fromJson(json['record'] as Map<String, dynamic>),
      mileageToDate: json['mileageToDate'] as int?,
    );

Map<String, dynamic> _$$TravelExpenseRecordModelImplToJson(
        _$TravelExpenseRecordModelImpl instance) =>
    <String, dynamic>{
      'test': instance.test,
      'local_rate': instance.local_rate,
      'record': instance.record,
      'mileageToDate': instance.mileageToDate,
    };

_$TravelRecordImpl _$$TravelRecordImplFromJson(Map<String, dynamic> json) =>
    _$TravelRecordImpl(
      id: json['id'] as int?,
      incurred: json['incurred'] == null
          ? null
          : DateTime.parse(json['incurred'] as String),
      submitted: json['submitted'] == null
          ? null
          : DateTime.parse(json['submitted'] as String),
      approved: json['approved'] == null
          ? null
          : DateTime.parse(json['approved'] as String),
      paid:
          json['paid'] == null ? null : DateTime.parse(json['paid'] as String),
      type_id: json['type_id'] as int?,
      purpose: json['purpose'] as String?,
      client: json['client'] as String?,
      location: json['location'] as String?,
      start_location: json['start_location'] as String?,
      end_location: json['end_location'] as String?,
      start_time: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      end_time: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      nights: json['nights'] as num?,
      rates_location: json['rates_location'],
      rates_local_currency_id: json['rates_local_currency_id'] as int?,
      rates_local_currency_rate: json['rates_local_currency_rate'] as num?,
      rates_hours_5: json['rates_hours_5'] as num?,
      rates_hours_10: json['rates_hours_10'] as num?,
      rates_overnight: json['rates_overnight'] as num?,
      rates_overnight_additional_subsistence_value:
          json['rates_overnight_additional_subsistence_value'] as num?,
      rates_overnight_additional_subsistence_currency_id:
          json['rates_overnight_additional_subsistence_currency_id'],
      rates_overnight_additional_subsistence_currency_rate:
          json['rates_overnight_additional_subsistence_currency_rate'] as num?,
      rates_overnight_additional_accommodation:
          json['rates_overnight_additional_accommodation'],
      rates_overnight_additional_accommodation_description:
          json['rates_overnight_additional_accommodation_description'],
      rates_overnight_additional_accommodation_value:
          json['rates_overnight_additional_accommodation_value'],
      accomodation_required_____: json['accomodation_required_____'],
      accomodation_nights_____: json['accomodation_nights_____'],
      use_car: json['use_car'] as num?,
      motor_distance: json['motor_distance'],
      car_make_model: json['car_make_model'],
      motor_start_location: json['motor_start_location'],
      motor_end_location: json['motor_end_location'],
      engine_size_id: json['engine_size_id'] as int?,
      mileage_value: json['mileage_value'],
      status_id: json['status_id'] as int?,
      expense_id: json['expense_id'] as int?,
      overnight_per_night_base: json['overnight_per_night_base'],
      overnight_per_night_additional_subsistence:
          json['overnight_per_night_additional_subsistence'],
      overnight_per_night_additional_accommodation:
          json['overnight_per_night_additional_accommodation'],
      overnight_per_night_total: json['overnight_per_night_total'],
      overnight: json['overnight'],
      subsistence: json['subsistence'] as num?,
      total: json['total'] as num?,
      user_id: json['user_id'] as int?,
      added_time: json['added_time'] == null
          ? null
          : DateTime.parse(json['added_time'] as String),
      nights1: json['nights1'] as num?,
      nights2: json['nights2'] as num?,
      currency_id: json['currency_id'] as int?,
      status: json['status'],
      rejected: json['rejected'] == null
          ? null
          : DateTime.parse(json['rejected'] as String),
      rejected_by: json['rejected_by'],
      paidBy: json['paidBy'],
      rejected_reason: json['rejected_reason'],
      deleted_at: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      deleted_by: json['deleted_by'],
      status_name: json['status_name'] as String?,
    );

Map<String, dynamic> _$$TravelRecordImplToJson(_$TravelRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'incurred': instance.incurred?.toIso8601String(),
      'submitted': instance.submitted?.toIso8601String(),
      'approved': instance.approved?.toIso8601String(),
      'paid': instance.paid?.toIso8601String(),
      'type_id': instance.type_id,
      'purpose': instance.purpose,
      'client': instance.client,
      'location': instance.location,
      'start_location': instance.start_location,
      'end_location': instance.end_location,
      'start_time': instance.start_time?.toIso8601String(),
      'end_time': instance.end_time?.toIso8601String(),
      'nights': instance.nights,
      'rates_location': instance.rates_location,
      'rates_local_currency_id': instance.rates_local_currency_id,
      'rates_local_currency_rate': instance.rates_local_currency_rate,
      'rates_hours_5': instance.rates_hours_5,
      'rates_hours_10': instance.rates_hours_10,
      'rates_overnight': instance.rates_overnight,
      'rates_overnight_additional_subsistence_value':
          instance.rates_overnight_additional_subsistence_value,
      'rates_overnight_additional_subsistence_currency_id':
          instance.rates_overnight_additional_subsistence_currency_id,
      'rates_overnight_additional_subsistence_currency_rate':
          instance.rates_overnight_additional_subsistence_currency_rate,
      'rates_overnight_additional_accommodation':
          instance.rates_overnight_additional_accommodation,
      'rates_overnight_additional_accommodation_description':
          instance.rates_overnight_additional_accommodation_description,
      'rates_overnight_additional_accommodation_value':
          instance.rates_overnight_additional_accommodation_value,
      'accomodation_required_____': instance.accomodation_required_____,
      'accomodation_nights_____': instance.accomodation_nights_____,
      'use_car': instance.use_car,
      'motor_distance': instance.motor_distance,
      'car_make_model': instance.car_make_model,
      'motor_start_location': instance.motor_start_location,
      'motor_end_location': instance.motor_end_location,
      'engine_size_id': instance.engine_size_id,
      'mileage_value': instance.mileage_value,
      'status_id': instance.status_id,
      'expense_id': instance.expense_id,
      'overnight_per_night_base': instance.overnight_per_night_base,
      'overnight_per_night_additional_subsistence':
          instance.overnight_per_night_additional_subsistence,
      'overnight_per_night_additional_accommodation':
          instance.overnight_per_night_additional_accommodation,
      'overnight_per_night_total': instance.overnight_per_night_total,
      'overnight': instance.overnight,
      'subsistence': instance.subsistence,
      'total': instance.total,
      'user_id': instance.user_id,
      'added_time': instance.added_time?.toIso8601String(),
      'nights1': instance.nights1,
      'nights2': instance.nights2,
      'currency_id': instance.currency_id,
      'status': instance.status,
      'rejected': instance.rejected?.toIso8601String(),
      'rejected_by': instance.rejected_by,
      'paidBy': instance.paidBy,
      'rejected_reason': instance.rejected_reason,
      'deleted_at': instance.deleted_at?.toIso8601String(),
      'deleted_by': instance.deleted_by,
      'status_name': instance.status_name,
    };
