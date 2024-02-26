// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_model.freezed.dart';
part 'overview_model.g.dart';

@freezed
class OverviewModel with _$OverviewModel {
  const factory OverviewModel({
    Invoice? payslip,
    Invoice? working_hours,
    Invoice? invoice,
    Expenses? expenses,
  }) = _OverviewModel;

  factory OverviewModel.fromJson(Map<String, dynamic> json) =>
      _$OverviewModelFromJson(json);
}

@freezed
class Expenses with _$Expenses {
  const factory Expenses({
    num? value,
    num? travel,
    num? business,
  }) = _Expenses;

  factory Expenses.fromJson(Map<String, dynamic> json) =>
      _$ExpensesFromJson(json);
}

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    num? value,
    String? date,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
