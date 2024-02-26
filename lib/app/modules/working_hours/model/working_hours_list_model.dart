// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_hours_list_model.freezed.dart';
part 'working_hours_list_model.g.dart';

@freezed
class WorkingHoursListModel with _$WorkingHoursListModel {
  const factory WorkingHoursListModel(List<WorkingHoursModel>? items) =
      _WorkingHoursListModel;

  factory WorkingHoursListModel.fromJson(List<dynamic> json) =>
      WorkingHoursListModel(
        [for (var item in json) WorkingHoursModel.fromJson(item)],
      );
}

@freezed
class WorkingHoursModel with _$WorkingHoursModel {
  const factory WorkingHoursModel(
    int? id,
    DateTime? period,
    num? hours,
    num? gross,
    num? deductions,
    num? net,
    num? paid,
    num? rate,
    num? hours_away,
    num? hours_away_rate,
    num? total,
    num? car_park,
    num? transfer,
    num? training,
    num? id_charge,
    num? hours_rate,
    num? away_total,
    num? client_id,
    num? user_id,
    DateTime? hours_of,
    bool? isExpanded,
  ) = _WorkingHoursModel;

  factory WorkingHoursModel.fromJson(Map<String, dynamic> json) =>
      _$WorkingHoursModelFromJson(json);
}
