// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseModelImpl _$$ExpenseModelImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseModelImpl(
      year: json['year'] as int,
      month: json['month'] as int,
      awaiting: json['awaiting'] as num?,
      approved: json['approved'] as num?,
      paid: json['paid'] as num?,
      rejected: json['rejected'] as num?,
      deleted: json['deleted'] as num?,
      total: json['total'] as num?,
    );

Map<String, dynamic> _$$ExpenseModelImplToJson(_$ExpenseModelImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'awaiting': instance.awaiting,
      'approved': instance.approved,
      'paid': instance.paid,
      'rejected': instance.rejected,
      'deleted': instance.deleted,
      'total': instance.total,
    };
