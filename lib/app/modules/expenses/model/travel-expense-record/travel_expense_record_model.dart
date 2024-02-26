// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_expense_record_model.freezed.dart';
part 'travel_expense_record_model.g.dart';

@freezed
class TravelExpenseRecordModel with _$TravelExpenseRecordModel {
  const factory TravelExpenseRecordModel({
    int? test,
    String? local_rate,
    TravelRecord? record,
    int? mileageToDate,
  }) = _TravelExpenseRecordModel;

  factory TravelExpenseRecordModel.fromJson(Map<String, dynamic> json) =>
      _$TravelExpenseRecordModelFromJson(json);
}

@freezed
class TravelRecord with _$TravelRecord {
  const factory TravelRecord({
    int? id,
    DateTime? incurred,
    DateTime? submitted,
    DateTime? approved,
    DateTime? paid,
    int? type_id,
    String? purpose,
    String? client,
    String? location,
    String? start_location,
    String? end_location,
    DateTime? start_time,
    DateTime? end_time,
    num? nights,
    dynamic rates_location,
    int? rates_local_currency_id,
    num? rates_local_currency_rate,
    num? rates_hours_5,
    num? rates_hours_10,
    num? rates_overnight,
    num? rates_overnight_additional_subsistence_value,
    dynamic rates_overnight_additional_subsistence_currency_id,
    num? rates_overnight_additional_subsistence_currency_rate,
    dynamic rates_overnight_additional_accommodation,
    dynamic rates_overnight_additional_accommodation_description,
    dynamic rates_overnight_additional_accommodation_value,
    dynamic accomodation_required_____,
    dynamic accomodation_nights_____,
    num? use_car,
    dynamic motor_distance,
    dynamic car_make_model,
    dynamic motor_start_location,
    dynamic motor_end_location,
    int? engine_size_id,
    dynamic mileage_value,
    int? status_id,
    int? expense_id,
    dynamic overnight_per_night_base,
    dynamic overnight_per_night_additional_subsistence,
    dynamic overnight_per_night_additional_accommodation,
    dynamic overnight_per_night_total,
    dynamic overnight,
    num? subsistence,
    num? total,
    int? user_id,
    DateTime? added_time,
    num? nights1,
    num? nights2,
    int? currency_id,
    dynamic status,
    DateTime? rejected,
    dynamic rejected_by,
    dynamic paidBy,
    dynamic rejected_reason,
    DateTime? deleted_at,
    dynamic deleted_by,
    String? status_name,
  }) = _TravelRecord;

  factory TravelRecord.fromJson(Map<String, dynamic> json) =>
      _$TravelRecordFromJson(json);
}
