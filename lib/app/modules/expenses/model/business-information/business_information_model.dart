import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_information_model.freezed.dart';
part 'business_information_model.g.dart';

@freezed
class BusinessInformationModel with _$BusinessInformationModel {
  const factory BusinessInformationModel({
    dynamic record,
    List<Currency>? currencies,
    List<Category>? categories,
    List<dynamic>? files,
  }) = _BusinessInformationModel;

  factory BusinessInformationModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessInformationModelFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    int? id,
    String? name,
    num? value,
    num? adminGroupId,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Currency with _$Currency {
  const factory Currency({
    int? id,
    String? code,
    num? rate,
    String? name,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}
