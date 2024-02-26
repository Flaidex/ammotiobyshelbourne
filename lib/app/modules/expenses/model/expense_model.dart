import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_model.freezed.dart';
part 'expense_model.g.dart';

@freezed
class ExpenseModel with _$ExpenseModel {
  factory ExpenseModel({
    required int year,
    required int month,
    num? awaiting,
    num? approved,
    num? paid,
    num? rejected,
    num? deleted,
    num? total,
  }) = _ExpenseModel;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);
}
