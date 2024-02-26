// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_item_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthItemListModelImpl _$$MonthItemListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthItemListModelImpl(
      (json['items'] as List<dynamic>?)
          ?.map((e) => MonthItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MonthItemListModelImplToJson(
        _$MonthItemListModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$MonthItemModelImpl _$$MonthItemModelImplFromJson(Map<String, dynamic> json) =>
    _$MonthItemModelImpl(
      json['id'] as int?,
      json['incurred'] == null
          ? null
          : DateTime.parse(json['incurred'] as String),
      json['submitted'] == null
          ? null
          : DateTime.parse(json['submitted'] as String),
      json['approved'] == null
          ? null
          : DateTime.parse(json['approved'] as String),
      json['paid'] == null ? null : DateTime.parse(json['paid'] as String),
      json['status_id'] as int?,
      json['description'] as String?,
      json['total'] as num?,
      json['status'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$$MonthItemModelImplToJson(
        _$MonthItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'incurred': instance.incurred?.toIso8601String(),
      'submitted': instance.submitted?.toIso8601String(),
      'approved': instance.approved?.toIso8601String(),
      'paid': instance.paid?.toIso8601String(),
      'status_id': instance.status_id,
      'description': instance.description,
      'total': instance.total,
      'status': instance.status,
      'type': instance.type,
    };
