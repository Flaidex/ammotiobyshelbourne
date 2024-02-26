// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payslips_list_model.freezed.dart';
part 'payslips_list_model.g.dart';

@freezed
class PayslipsListModel with _$PayslipsListModel {
  const factory PayslipsListModel(List<PayslipsModel>? items) =
      _PayslipsListModel;

  factory PayslipsListModel.fromJson(List<dynamic> json) => PayslipsListModel(
        [for (var item in json) PayslipsModel.fromJson(item)],
      );
}

@freezed
class PayslipsModel with _$PayslipsModel {
  const factory PayslipsModel(
    int? id,
    DateTime? date,
    num? gross_pay,
    num? gross_additions_taxable,
    num? gross_deductions_non_taxable,
    num? paye,
    num? prsi_ee,
    num? income_levy,
    num? net_additions_non_taxable,
    num? net_deductions_not_allowable,
    num? payment,
    num? prsi_er,
    num? notional_pay,
    num? pension,
    num? user_id,
    num? net_payment,
    num? gross_taxable_pay,
    num? non_taxable_adjustment,
    String? prsi_class,
    String? tax_code_uk,
    num? allowable_deduction,
    num? tax_credit,
    dynamic tax_credit_annual,
    num? cut_off,
    dynamic cut_off_annual,
    num? currency_id,
    num? insurable_weeks,
    String? calculation_basis,
    dynamic brightpay_id,
  ) = _PayslipsModel;

  factory PayslipsModel.fromJson(Map<String, dynamic> json) =>
      _$PayslipsModelFromJson(json);
}
