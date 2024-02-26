// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_expense_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessExpenseRecordModelImpl _$$BusinessExpenseRecordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessExpenseRecordModelImpl(
      record: json['record'] == null
          ? null
          : Record.fromJson(json['record'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FileElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BusinessExpenseRecordModelImplToJson(
        _$BusinessExpenseRecordModelImpl instance) =>
    <String, dynamic>{
      'record': instance.record,
      'files': instance.files,
    };

_$FileElementImpl _$$FileElementImplFromJson(Map<String, dynamic> json) =>
    _$FileElementImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      internal: json['internal'] as String?,
    );

Map<String, dynamic> _$$FileElementImplToJson(_$FileElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'internal': instance.internal,
    };

_$RecordImpl _$$RecordImplFromJson(Map<String, dynamic> json) => _$RecordImpl(
      id: json['id'] as int?,
      value: json['value'] as num?,
      net: json['net'] as num?,
      gross: json['gross'] as num?,
      currency_id: json['currency_id'] as int?,
      incurred: json['incurred'] == null
          ? null
          : DateTime.parse(json['incurred'] as String),
      submitted: json['submitted'] == null
          ? null
          : DateTime.parse(json['submitted'] as String),
      type_id: json['type_id'] as int?,
      description: json['description'] as String?,
      expense_id: json['expense_id'] as int?,
      approved: json['approved'],
      paid: json['paid'],
      approved_by_id: json['approved_by_id'],
      vat_rate: json['vat_rate'],
      vat_amount: json['vat_amount'],
      status_id: json['status_id'] as int?,
      status: json['status'],
      filename: json['filename'],
      hide: json['hide'] as int?,
      user_id: json['user_id'] as int?,
      import_cplus: json['import_cplus'] as bool?,
      is_deduction: json['is_deduction'] as num?,
      rejected: json['rejected'],
      rejected_by: json['rejected_by'],
      paid_by: json['paid_by'],
      rejected_reason: json['rejected_reason'],
      deleted_at: json['deleted_at'],
      deleted_by: json['deleted_by'],
      status_name: json['status_name'] as String?,
    );

Map<String, dynamic> _$$RecordImplToJson(_$RecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'net': instance.net,
      'gross': instance.gross,
      'currency_id': instance.currency_id,
      'incurred': instance.incurred?.toIso8601String(),
      'submitted': instance.submitted?.toIso8601String(),
      'type_id': instance.type_id,
      'description': instance.description,
      'expense_id': instance.expense_id,
      'approved': instance.approved,
      'paid': instance.paid,
      'approved_by_id': instance.approved_by_id,
      'vat_rate': instance.vat_rate,
      'vat_amount': instance.vat_amount,
      'status_id': instance.status_id,
      'status': instance.status,
      'filename': instance.filename,
      'hide': instance.hide,
      'user_id': instance.user_id,
      'import_cplus': instance.import_cplus,
      'is_deduction': instance.is_deduction,
      'rejected': instance.rejected,
      'rejected_by': instance.rejected_by,
      'paid_by': instance.paid_by,
      'rejected_reason': instance.rejected_reason,
      'deleted_at': instance.deleted_at,
      'deleted_by': instance.deleted_by,
      'status_name': instance.status_name,
    };
