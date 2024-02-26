import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_expense_response_model.freezed.dart';
part 'new_expense_response_model.g.dart';

@freezed
class NewExpenseResponseModel with _$NewExpenseResponseModel {
  const factory NewExpenseResponseModel({
    String? month,
    String? year,
  }) = _NewExpenseResponseModel;

  factory NewExpenseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NewExpenseResponseModelFromJson(json);
}
