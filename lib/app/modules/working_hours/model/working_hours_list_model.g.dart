// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_hours_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkingHoursListModelImpl _$$WorkingHoursListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkingHoursListModelImpl(
      (json['items'] as List<dynamic>?)
          ?.map((e) => WorkingHoursModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WorkingHoursListModelImplToJson(
        _$WorkingHoursListModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$WorkingHoursModelImpl _$$WorkingHoursModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkingHoursModelImpl(
      json['id'] as int?,
      json['period'] == null ? null : DateTime.parse(json['period'] as String),
      json['hours'] as num?,
      json['gross'] as num?,
      json['deductions'] as num?,
      json['net'] as num?,
      json['paid'] as num?,
      json['rate'] as num?,
      json['hours_away'] as num?,
      json['hours_away_rate'] as num?,
      json['total'] as num?,
      json['car_park'] as num?,
      json['transfer'] as num?,
      json['training'] as num?,
      json['id_charge'] as num?,
      json['hours_rate'] as num?,
      json['away_total'] as num?,
      json['client_id'] as num?,
      json['user_id'] as num?,
      json['hours_of'] == null
          ? null
          : DateTime.parse(json['hours_of'] as String),
      json['isExpanded'] as bool?,
    );

Map<String, dynamic> _$$WorkingHoursModelImplToJson(
        _$WorkingHoursModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'period': instance.period?.toIso8601String(),
      'hours': instance.hours,
      'gross': instance.gross,
      'deductions': instance.deductions,
      'net': instance.net,
      'paid': instance.paid,
      'rate': instance.rate,
      'hours_away': instance.hours_away,
      'hours_away_rate': instance.hours_away_rate,
      'total': instance.total,
      'car_park': instance.car_park,
      'transfer': instance.transfer,
      'training': instance.training,
      'id_charge': instance.id_charge,
      'hours_rate': instance.hours_rate,
      'away_total': instance.away_total,
      'client_id': instance.client_id,
      'user_id': instance.user_id,
      'hours_of': instance.hours_of?.toIso8601String(),
      'isExpanded': instance.isExpanded,
    };
