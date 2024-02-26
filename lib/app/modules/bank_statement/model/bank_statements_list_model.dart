// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_statements_list_model.freezed.dart';
part 'bank_statements_list_model.g.dart';

@freezed
class BankStatementsListModel with _$BankStatementsListModel {
  const factory BankStatementsListModel(List<BankStatementsModel>? items) =
      _BankStatementsListModel;

  factory BankStatementsListModel.fromJson(List<dynamic> json) =>
      BankStatementsListModel(
        [for (var item in json) BankStatementsModel.fromJson(item)],
      );
}

@freezed
class BankStatementsModel with _$BankStatementsModel {
  const factory BankStatementsModel(
    int? id,
    DateTime? date,
    String? details,
    num? debit,
    num? credit,
    num? balance,
    num? user_id,
    num? company_id,
    num? account_id,
  ) = _BankStatementsModel;

  factory BankStatementsModel.fromJson(Map<String, dynamic> json) =>
      _$BankStatementsModelFromJson(json);
}
