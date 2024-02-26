// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverviewModelImpl _$$OverviewModelImplFromJson(Map<String, dynamic> json) =>
    _$OverviewModelImpl(
      payslip: json['payslip'] == null
          ? null
          : Invoice.fromJson(json['payslip'] as Map<String, dynamic>),
      working_hours: json['working_hours'] == null
          ? null
          : Invoice.fromJson(json['working_hours'] as Map<String, dynamic>),
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      expenses: json['expenses'] == null
          ? null
          : Expenses.fromJson(json['expenses'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OverviewModelImplToJson(_$OverviewModelImpl instance) =>
    <String, dynamic>{
      'payslip': instance.payslip,
      'working_hours': instance.working_hours,
      'invoice': instance.invoice,
      'expenses': instance.expenses,
    };

_$ExpensesImpl _$$ExpensesImplFromJson(Map<String, dynamic> json) =>
    _$ExpensesImpl(
      value: json['value'] as num?,
      travel: json['travel'] as num?,
      business: json['business'] as num?,
    );

Map<String, dynamic> _$$ExpensesImplToJson(_$ExpensesImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'travel': instance.travel,
      'business': instance.business,
    };

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      value: json['value'] as num?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'date': instance.date,
    };
