// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'month_item_list_model.freezed.dart';
part 'month_item_list_model.g.dart';

@freezed
class MonthItemListModel with _$MonthItemListModel {
  const factory MonthItemListModel(List<MonthItemModel>? items) =
      _MonthItemListModel;

  factory MonthItemListModel.fromJson(List<dynamic> json) => MonthItemListModel(
        [for (var item in json) MonthItemModel.fromJson(item)],
      );
}

@freezed
class MonthItemModel with _$MonthItemModel {
  const factory MonthItemModel(
    int? id,
    DateTime? incurred,
    DateTime? submitted,
    DateTime? approved,
    DateTime? paid,
    int? status_id,
    String? description,
    num? total,
    String? status,
    String? type,
  ) = _MonthItemModel;

  factory MonthItemModel.fromJson(Map<String, dynamic> json) =>
      _$MonthItemModelFromJson(json);
}
