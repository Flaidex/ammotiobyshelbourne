// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_invoice_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesInvoiceListModelImpl _$$SalesInvoiceListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesInvoiceListModelImpl(
      (json['items'] as List<dynamic>?)
          ?.map((e) => SalesInvoiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SalesInvoiceListModelImplToJson(
        _$SalesInvoiceListModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$SalesInvoiceModelImpl _$$SalesInvoiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesInvoiceModelImpl(
      json['id'] as int?,
      json['date'] == null ? null : DateTime.parse(json['date'] as String),
      json['description'] as String?,
      (json['gross'] as num?)?.toDouble(),
      json['vatRate'] as num?,
      (json['vatAmount'] as num?)?.toDouble(),
      (json['net'] as num?)?.toDouble(),
      json['purchaseInvoice'] as num?,
      json['feeNet'] as num?,
      json['userId'] as num?,
      json['expenses'] as num?,
    );

Map<String, dynamic> _$$SalesInvoiceModelImplToJson(
        _$SalesInvoiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'description': instance.description,
      'gross': instance.gross,
      'vatRate': instance.vatRate,
      'vatAmount': instance.vatAmount,
      'net': instance.net,
      'purchaseInvoice': instance.purchaseInvoice,
      'feeNet': instance.feeNet,
      'userId': instance.userId,
      'expenses': instance.expenses,
    };
