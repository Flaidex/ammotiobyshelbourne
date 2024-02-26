// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_information_model.freezed.dart';
part 'travel_information_model.g.dart';

@freezed
class TravelInformationModel with _$TravelInformationModel {
  const factory TravelInformationModel({
    int? test,
    String? localRate,
    dynamic record,
    List<Location>? locations,
    List<EngineSize>? engineSizes,
    int? mileageToDate,
  }) = _TravelInformationModel;

  factory TravelInformationModel.fromJson(Map<String, dynamic> json) =>
      _$TravelInformationModelFromJson(json);
}

@freezed
class EngineSize with _$EngineSize {
  const factory EngineSize({
    int? id,
    num? sort,
    String? name,
    num? band1Rate,
    num? band1Limit,
    num? band2Rate,
    num? band2Limit,
    num? band3Rate,
    num? band3Limit,
    num? band4Rate,
    num? band4Limit,
  }) = _EngineSize;

  factory EngineSize.fromJson(Map<String, dynamic> json) =>
      _$EngineSizeFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    int? id,
    int? country_id,
    String? name,
    String? currency_code,
    int? local_currency_id,
    num? overnight,
    num? hours_10,
    num? hours_5,
    int? currency_2_id,
    num? overnight_2,
    num? additional_accommodation,
    String? additional_accommodation_description,
    int? admin_group_id,
    int? payroll_currency_id,
    String? country,
    num? rate,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
