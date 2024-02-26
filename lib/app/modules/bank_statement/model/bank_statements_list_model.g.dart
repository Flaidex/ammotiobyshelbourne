// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_statements_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankStatementsListModelImpl _$$BankStatementsListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BankStatementsListModelImpl(
      (json['items'] as List<dynamic>?)
          ?.map((e) => BankStatementsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BankStatementsListModelImplToJson(
        _$BankStatementsListModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$BankStatementsModelImpl _$$BankStatementsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BankStatementsModelImpl(
      json['id'] as int?,
      json['date'] == null ? null : DateTime.parse(json['date'] as String),
      json['details'] as String?,
      json['debit'] as num?,
      json['credit'] as num?,
      json['balance'] as num?,
      json['user_id'] as num?,
      json['company_id'] as num?,
      json['account_id'] as num?,
    );

Map<String, dynamic> _$$BankStatementsModelImplToJson(
        _$BankStatementsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'details': instance.details,
      'debit': instance.debit,
      'credit': instance.credit,
      'balance': instance.balance,
      'user_id': instance.user_id,
      'company_id': instance.company_id,
      'account_id': instance.account_id,
    };
