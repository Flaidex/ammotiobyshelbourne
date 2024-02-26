// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslips_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayslipsListModelImpl _$$PayslipsListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PayslipsListModelImpl(
      (json['items'] as List<dynamic>?)
          ?.map((e) => PayslipsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PayslipsListModelImplToJson(
        _$PayslipsListModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$PayslipsModelImpl _$$PayslipsModelImplFromJson(Map<String, dynamic> json) =>
    _$PayslipsModelImpl(
      json['id'] as int?,
      json['date'] == null ? null : DateTime.parse(json['date'] as String),
      json['gross_pay'] as num?,
      json['gross_additions_taxable'] as num?,
      json['gross_deductions_non_taxable'] as num?,
      json['paye'] as num?,
      json['prsi_ee'] as num?,
      json['income_levy'] as num?,
      json['net_additions_non_taxable'] as num?,
      json['net_deductions_not_allowable'] as num?,
      json['payment'] as num?,
      json['prsi_er'] as num?,
      json['notional_pay'] as num?,
      json['pension'] as num?,
      json['user_id'] as num?,
      json['net_payment'] as num?,
      json['gross_taxable_pay'] as num?,
      json['non_taxable_adjustment'] as num?,
      json['prsi_class'] as String?,
      json['tax_code_uk'] as String?,
      json['allowable_deduction'] as num?,
      json['tax_credit'] as num?,
      json['tax_credit_annual'],
      json['cut_off'] as num?,
      json['cut_off_annual'],
      json['currency_id'] as num?,
      json['insurable_weeks'] as num?,
      json['calculation_basis'] as String?,
      json['brightpay_id'],
    );

Map<String, dynamic> _$$PayslipsModelImplToJson(_$PayslipsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'gross_pay': instance.gross_pay,
      'gross_additions_taxable': instance.gross_additions_taxable,
      'gross_deductions_non_taxable': instance.gross_deductions_non_taxable,
      'paye': instance.paye,
      'prsi_ee': instance.prsi_ee,
      'income_levy': instance.income_levy,
      'net_additions_non_taxable': instance.net_additions_non_taxable,
      'net_deductions_not_allowable': instance.net_deductions_not_allowable,
      'payment': instance.payment,
      'prsi_er': instance.prsi_er,
      'notional_pay': instance.notional_pay,
      'pension': instance.pension,
      'user_id': instance.user_id,
      'net_payment': instance.net_payment,
      'gross_taxable_pay': instance.gross_taxable_pay,
      'non_taxable_adjustment': instance.non_taxable_adjustment,
      'prsi_class': instance.prsi_class,
      'tax_code_uk': instance.tax_code_uk,
      'allowable_deduction': instance.allowable_deduction,
      'tax_credit': instance.tax_credit,
      'tax_credit_annual': instance.tax_credit_annual,
      'cut_off': instance.cut_off,
      'cut_off_annual': instance.cut_off_annual,
      'currency_id': instance.currency_id,
      'insurable_weeks': instance.insurable_weeks,
      'calculation_basis': instance.calculation_basis,
      'brightpay_id': instance.brightpay_id,
    };
