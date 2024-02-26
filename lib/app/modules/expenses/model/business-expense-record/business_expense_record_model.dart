// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_expense_record_model.freezed.dart';
part 'business_expense_record_model.g.dart';

@freezed
class BusinessExpenseRecordModel with _$BusinessExpenseRecordModel {
  const factory BusinessExpenseRecordModel({
    Record? record,
    List<FileElement>? files,
  }) = _BusinessExpenseRecordModel;

  factory BusinessExpenseRecordModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessExpenseRecordModelFromJson(json);
}

@freezed
class FileElement with _$FileElement {
  const factory FileElement({
    int? id,
    String? name,
    String? internal,
  }) = _FileElement;

  factory FileElement.fromJson(Map<String, dynamic> json) =>
      _$FileElementFromJson(json);
}

@freezed
class Record with _$Record {
  const factory Record({
    int? id,
    num? value,
    num? net,
    num? gross,
    int? currency_id,
    DateTime? incurred,
    DateTime? submitted,
    int? type_id,
    String? description,
    int? expense_id,
    dynamic approved,
    dynamic paid,
    dynamic approved_by_id,
    dynamic vat_rate,
    dynamic vat_amount,
    int? status_id,
    dynamic status,
    dynamic filename,
    int? hide,
    int? user_id,
    bool? import_cplus,
    num? is_deduction,
    dynamic rejected,
    dynamic rejected_by,
    dynamic paid_by,
    dynamic rejected_reason,
    dynamic deleted_at,
    dynamic deleted_by,
    String? status_name,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}
