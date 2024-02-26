// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelInformationModelImpl _$$TravelInformationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelInformationModelImpl(
      test: json['test'] as int?,
      localRate: json['localRate'] as String?,
      record: json['record'],
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      engineSizes: (json['engineSizes'] as List<dynamic>?)
          ?.map((e) => EngineSize.fromJson(e as Map<String, dynamic>))
          .toList(),
      mileageToDate: json['mileageToDate'] as int?,
    );

Map<String, dynamic> _$$TravelInformationModelImplToJson(
        _$TravelInformationModelImpl instance) =>
    <String, dynamic>{
      'test': instance.test,
      'localRate': instance.localRate,
      'record': instance.record,
      'locations': instance.locations,
      'engineSizes': instance.engineSizes,
      'mileageToDate': instance.mileageToDate,
    };

_$EngineSizeImpl _$$EngineSizeImplFromJson(Map<String, dynamic> json) =>
    _$EngineSizeImpl(
      id: json['id'] as int?,
      sort: json['sort'] as num?,
      name: json['name'] as String?,
      band1Rate: json['band1Rate'] as num?,
      band1Limit: json['band1Limit'] as num?,
      band2Rate: json['band2Rate'] as num?,
      band2Limit: json['band2Limit'] as num?,
      band3Rate: json['band3Rate'] as num?,
      band3Limit: json['band3Limit'] as num?,
      band4Rate: json['band4Rate'] as num?,
      band4Limit: json['band4Limit'] as num?,
    );

Map<String, dynamic> _$$EngineSizeImplToJson(_$EngineSizeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sort': instance.sort,
      'name': instance.name,
      'band1Rate': instance.band1Rate,
      'band1Limit': instance.band1Limit,
      'band2Rate': instance.band2Rate,
      'band2Limit': instance.band2Limit,
      'band3Rate': instance.band3Rate,
      'band3Limit': instance.band3Limit,
      'band4Rate': instance.band4Rate,
      'band4Limit': instance.band4Limit,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      id: json['id'] as int?,
      country_id: json['country_id'] as int?,
      name: json['name'] as String?,
      currency_code: json['currency_code'] as String?,
      local_currency_id: json['local_currency_id'] as int?,
      overnight: json['overnight'] as num?,
      hours_10: json['hours_10'] as num?,
      hours_5: json['hours_5'] as num?,
      currency_2_id: json['currency_2_id'] as int?,
      overnight_2: json['overnight_2'] as num?,
      additional_accommodation: json['additional_accommodation'] as num?,
      additional_accommodation_description:
          json['additional_accommodation_description'] as String?,
      admin_group_id: json['admin_group_id'] as int?,
      payroll_currency_id: json['payroll_currency_id'] as int?,
      country: json['country'] as String?,
      rate: json['rate'] as num?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_id': instance.country_id,
      'name': instance.name,
      'currency_code': instance.currency_code,
      'local_currency_id': instance.local_currency_id,
      'overnight': instance.overnight,
      'hours_10': instance.hours_10,
      'hours_5': instance.hours_5,
      'currency_2_id': instance.currency_2_id,
      'overnight_2': instance.overnight_2,
      'additional_accommodation': instance.additional_accommodation,
      'additional_accommodation_description':
          instance.additional_accommodation_description,
      'admin_group_id': instance.admin_group_id,
      'payroll_currency_id': instance.payroll_currency_id,
      'country': instance.country,
      'rate': instance.rate,
    };
