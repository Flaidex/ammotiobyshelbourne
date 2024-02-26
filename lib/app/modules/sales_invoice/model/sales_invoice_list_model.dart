import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_invoice_list_model.freezed.dart';
part 'sales_invoice_list_model.g.dart';

@freezed
class SalesInvoiceListModel with _$SalesInvoiceListModel {
  const factory SalesInvoiceListModel(List<SalesInvoiceModel>? items) =
      _SalesInvoiceListModel;

  factory SalesInvoiceListModel.fromJson(List<dynamic> json) =>
      SalesInvoiceListModel(
        [for (var item in json) SalesInvoiceModel.fromJson(item)],
      );
}

@freezed
class SalesInvoiceModel with _$SalesInvoiceModel {
  const factory SalesInvoiceModel(
    int? id,
    DateTime? date,
    String? description,
    double? gross,
    num? vatRate,
    double? vatAmount,
    double? net,
    num? purchaseInvoice,
    num? feeNet,
    num? userId,
    num? expenses,
  ) = _SalesInvoiceModel;

  factory SalesInvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$SalesInvoiceModelFromJson(json);
}
