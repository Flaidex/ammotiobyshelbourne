import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_image_model.freezed.dart';
part 'business_image_model.g.dart';

@freezed
class BusinessImageModel with _$BusinessImageModel {
  const factory BusinessImageModel({
    int? id,
    String? originalName,
    String? name,
  }) = _BusinessImageModel;

  factory BusinessImageModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessImageModelFromJson(json);
}
