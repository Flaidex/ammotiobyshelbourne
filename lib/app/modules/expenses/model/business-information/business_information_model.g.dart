// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessInformationModelImpl _$$BusinessInformationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessInformationModelImpl(
      record: json['record'],
      currencies: (json['currencies'] as List<dynamic>?)
          ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      files: json['files'] as List<dynamic>?,
    );

Map<String, dynamic> _$$BusinessInformationModelImplToJson(
        _$BusinessInformationModelImpl instance) =>
    <String, dynamic>{
      'record': instance.record,
      'currencies': instance.currencies,
      'categories': instance.categories,
      'files': instance.files,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      value: json['value'] as num?,
      adminGroupId: json['adminGroupId'] as num?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'adminGroupId': instance.adminGroupId,
    };

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      id: json['id'] as int?,
      code: json['code'] as String?,
      rate: json['rate'] as num?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'rate': instance.rate,
      'name': instance.name,
    };
