// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payslips_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PayslipsListModel _$PayslipsListModelFromJson(Map<String, dynamic> json) {
  return _PayslipsListModel.fromJson(json);
}

/// @nodoc
mixin _$PayslipsListModel {
  List<PayslipsModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayslipsListModelCopyWith<PayslipsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipsListModelCopyWith<$Res> {
  factory $PayslipsListModelCopyWith(
          PayslipsListModel value, $Res Function(PayslipsListModel) then) =
      _$PayslipsListModelCopyWithImpl<$Res, PayslipsListModel>;
  @useResult
  $Res call({List<PayslipsModel>? items});
}

/// @nodoc
class _$PayslipsListModelCopyWithImpl<$Res, $Val extends PayslipsListModel>
    implements $PayslipsListModelCopyWith<$Res> {
  _$PayslipsListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PayslipsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayslipsListModelImplCopyWith<$Res>
    implements $PayslipsListModelCopyWith<$Res> {
  factory _$$PayslipsListModelImplCopyWith(_$PayslipsListModelImpl value,
          $Res Function(_$PayslipsListModelImpl) then) =
      __$$PayslipsListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PayslipsModel>? items});
}

/// @nodoc
class __$$PayslipsListModelImplCopyWithImpl<$Res>
    extends _$PayslipsListModelCopyWithImpl<$Res, _$PayslipsListModelImpl>
    implements _$$PayslipsListModelImplCopyWith<$Res> {
  __$$PayslipsListModelImplCopyWithImpl(_$PayslipsListModelImpl _value,
      $Res Function(_$PayslipsListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$PayslipsListModelImpl(
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PayslipsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipsListModelImpl implements _PayslipsListModel {
  const _$PayslipsListModelImpl(final List<PayslipsModel>? items)
      : _items = items;

  factory _$PayslipsListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayslipsListModelImplFromJson(json);

  final List<PayslipsModel>? _items;
  @override
  List<PayslipsModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PayslipsListModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayslipsListModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayslipsListModelImplCopyWith<_$PayslipsListModelImpl> get copyWith =>
      __$$PayslipsListModelImplCopyWithImpl<_$PayslipsListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayslipsListModelImplToJson(
      this,
    );
  }
}

abstract class _PayslipsListModel implements PayslipsListModel {
  const factory _PayslipsListModel(final List<PayslipsModel>? items) =
      _$PayslipsListModelImpl;

  factory _PayslipsListModel.fromJson(Map<String, dynamic> json) =
      _$PayslipsListModelImpl.fromJson;

  @override
  List<PayslipsModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$PayslipsListModelImplCopyWith<_$PayslipsListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayslipsModel _$PayslipsModelFromJson(Map<String, dynamic> json) {
  return _PayslipsModel.fromJson(json);
}

/// @nodoc
mixin _$PayslipsModel {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  num? get gross_pay => throw _privateConstructorUsedError;
  num? get gross_additions_taxable => throw _privateConstructorUsedError;
  num? get gross_deductions_non_taxable => throw _privateConstructorUsedError;
  num? get paye => throw _privateConstructorUsedError;
  num? get prsi_ee => throw _privateConstructorUsedError;
  num? get income_levy => throw _privateConstructorUsedError;
  num? get net_additions_non_taxable => throw _privateConstructorUsedError;
  num? get net_deductions_not_allowable => throw _privateConstructorUsedError;
  num? get payment => throw _privateConstructorUsedError;
  num? get prsi_er => throw _privateConstructorUsedError;
  num? get notional_pay => throw _privateConstructorUsedError;
  num? get pension => throw _privateConstructorUsedError;
  num? get user_id => throw _privateConstructorUsedError;
  num? get net_payment => throw _privateConstructorUsedError;
  num? get gross_taxable_pay => throw _privateConstructorUsedError;
  num? get non_taxable_adjustment => throw _privateConstructorUsedError;
  String? get prsi_class => throw _privateConstructorUsedError;
  String? get tax_code_uk => throw _privateConstructorUsedError;
  num? get allowable_deduction => throw _privateConstructorUsedError;
  num? get tax_credit => throw _privateConstructorUsedError;
  dynamic get tax_credit_annual => throw _privateConstructorUsedError;
  num? get cut_off => throw _privateConstructorUsedError;
  dynamic get cut_off_annual => throw _privateConstructorUsedError;
  num? get currency_id => throw _privateConstructorUsedError;
  num? get insurable_weeks => throw _privateConstructorUsedError;
  String? get calculation_basis => throw _privateConstructorUsedError;
  dynamic get brightpay_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayslipsModelCopyWith<PayslipsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipsModelCopyWith<$Res> {
  factory $PayslipsModelCopyWith(
          PayslipsModel value, $Res Function(PayslipsModel) then) =
      _$PayslipsModelCopyWithImpl<$Res, PayslipsModel>;
  @useResult
  $Res call(
      {int? id,
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
      dynamic brightpay_id});
}

/// @nodoc
class _$PayslipsModelCopyWithImpl<$Res, $Val extends PayslipsModel>
    implements $PayslipsModelCopyWith<$Res> {
  _$PayslipsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? gross_pay = freezed,
    Object? gross_additions_taxable = freezed,
    Object? gross_deductions_non_taxable = freezed,
    Object? paye = freezed,
    Object? prsi_ee = freezed,
    Object? income_levy = freezed,
    Object? net_additions_non_taxable = freezed,
    Object? net_deductions_not_allowable = freezed,
    Object? payment = freezed,
    Object? prsi_er = freezed,
    Object? notional_pay = freezed,
    Object? pension = freezed,
    Object? user_id = freezed,
    Object? net_payment = freezed,
    Object? gross_taxable_pay = freezed,
    Object? non_taxable_adjustment = freezed,
    Object? prsi_class = freezed,
    Object? tax_code_uk = freezed,
    Object? allowable_deduction = freezed,
    Object? tax_credit = freezed,
    Object? tax_credit_annual = freezed,
    Object? cut_off = freezed,
    Object? cut_off_annual = freezed,
    Object? currency_id = freezed,
    Object? insurable_weeks = freezed,
    Object? calculation_basis = freezed,
    Object? brightpay_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gross_pay: freezed == gross_pay
          ? _value.gross_pay
          : gross_pay // ignore: cast_nullable_to_non_nullable
              as num?,
      gross_additions_taxable: freezed == gross_additions_taxable
          ? _value.gross_additions_taxable
          : gross_additions_taxable // ignore: cast_nullable_to_non_nullable
              as num?,
      gross_deductions_non_taxable: freezed == gross_deductions_non_taxable
          ? _value.gross_deductions_non_taxable
          : gross_deductions_non_taxable // ignore: cast_nullable_to_non_nullable
              as num?,
      paye: freezed == paye
          ? _value.paye
          : paye // ignore: cast_nullable_to_non_nullable
              as num?,
      prsi_ee: freezed == prsi_ee
          ? _value.prsi_ee
          : prsi_ee // ignore: cast_nullable_to_non_nullable
              as num?,
      income_levy: freezed == income_levy
          ? _value.income_levy
          : income_levy // ignore: cast_nullable_to_non_nullable
              as num?,
      net_additions_non_taxable: freezed == net_additions_non_taxable
          ? _value.net_additions_non_taxable
          : net_additions_non_taxable // ignore: cast_nullable_to_non_nullable
              as num?,
      net_deductions_not_allowable: freezed == net_deductions_not_allowable
          ? _value.net_deductions_not_allowable
          : net_deductions_not_allowable // ignore: cast_nullable_to_non_nullable
              as num?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as num?,
      prsi_er: freezed == prsi_er
          ? _value.prsi_er
          : prsi_er // ignore: cast_nullable_to_non_nullable
              as num?,
      notional_pay: freezed == notional_pay
          ? _value.notional_pay
          : notional_pay // ignore: cast_nullable_to_non_nullable
              as num?,
      pension: freezed == pension
          ? _value.pension
          : pension // ignore: cast_nullable_to_non_nullable
              as num?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as num?,
      net_payment: freezed == net_payment
          ? _value.net_payment
          : net_payment // ignore: cast_nullable_to_non_nullable
              as num?,
      gross_taxable_pay: freezed == gross_taxable_pay
          ? _value.gross_taxable_pay
          : gross_taxable_pay // ignore: cast_nullable_to_non_nullable
              as num?,
      non_taxable_adjustment: freezed == non_taxable_adjustment
          ? _value.non_taxable_adjustment
          : non_taxable_adjustment // ignore: cast_nullable_to_non_nullable
              as num?,
      prsi_class: freezed == prsi_class
          ? _value.prsi_class
          : prsi_class // ignore: cast_nullable_to_non_nullable
              as String?,
      tax_code_uk: freezed == tax_code_uk
          ? _value.tax_code_uk
          : tax_code_uk // ignore: cast_nullable_to_non_nullable
              as String?,
      allowable_deduction: freezed == allowable_deduction
          ? _value.allowable_deduction
          : allowable_deduction // ignore: cast_nullable_to_non_nullable
              as num?,
      tax_credit: freezed == tax_credit
          ? _value.tax_credit
          : tax_credit // ignore: cast_nullable_to_non_nullable
              as num?,
      tax_credit_annual: freezed == tax_credit_annual
          ? _value.tax_credit_annual
          : tax_credit_annual // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cut_off: freezed == cut_off
          ? _value.cut_off
          : cut_off // ignore: cast_nullable_to_non_nullable
              as num?,
      cut_off_annual: freezed == cut_off_annual
          ? _value.cut_off_annual
          : cut_off_annual // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currency_id: freezed == currency_id
          ? _value.currency_id
          : currency_id // ignore: cast_nullable_to_non_nullable
              as num?,
      insurable_weeks: freezed == insurable_weeks
          ? _value.insurable_weeks
          : insurable_weeks // ignore: cast_nullable_to_non_nullable
              as num?,
      calculation_basis: freezed == calculation_basis
          ? _value.calculation_basis
          : calculation_basis // ignore: cast_nullable_to_non_nullable
              as String?,
      brightpay_id: freezed == brightpay_id
          ? _value.brightpay_id
          : brightpay_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayslipsModelImplCopyWith<$Res>
    implements $PayslipsModelCopyWith<$Res> {
  factory _$$PayslipsModelImplCopyWith(
          _$PayslipsModelImpl value, $Res Function(_$PayslipsModelImpl) then) =
      __$$PayslipsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      dynamic brightpay_id});
}

/// @nodoc
class __$$PayslipsModelImplCopyWithImpl<$Res>
    extends _$PayslipsModelCopyWithImpl<$Res, _$PayslipsModelImpl>
    implements _$$PayslipsModelImplCopyWith<$Res> {
  __$$PayslipsModelImplCopyWithImpl(
      _$PayslipsModelImpl _value, $Res Function(_$PayslipsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? gross_pay = freezed,
    Object? gross_additions_taxable = freezed,
    Object? gross_deductions_non_taxable = freezed,
    Object? paye = freezed,
    Object? prsi_ee = freezed,
    Object? income_levy = freezed,
    Object? net_additions_non_taxable = freezed,
    Object? net_deductions_not_allowable = freezed,
    Object? payment = freezed,
    Object? prsi_er = freezed,
    Object? notional_pay = freezed,
    Object? pension = freezed,
    Object? user_id = freezed,
    Object? net_payment = freezed,
    Object? gross_taxable_pay = freezed,
    Object? non_taxable_adjustment = freezed,
    Object? prsi_class = freezed,
    Object? tax_code_uk = freezed,
    Object? allowable_deduction = freezed,
    Object? tax_credit = freezed,
    Object? tax_credit_annual = freezed,
    Object? cut_off = freezed,
    Object? cut_off_annual = freezed,
    Object? currency_id = freezed,
    Object? insurable_weeks = freezed,
    Object? calculation_basis = freezed,
    Object? brightpay_id = freezed,
  }) {
    return _then(_$PayslipsModelImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == gross_pay
          ? _value.gross_pay
          : gross_pay // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == gross_additions_taxable
          ? _value.gross_additions_taxable
          : gross_additions_taxable // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == gross_deductions_non_taxable
          ? _value.gross_deductions_non_taxable
          : gross_deductions_non_taxable // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == paye
          ? _value.paye
          : paye // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == prsi_ee
          ? _value.prsi_ee
          : prsi_ee // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == income_levy
          ? _value.income_levy
          : income_levy // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == net_additions_non_taxable
          ? _value.net_additions_non_taxable
          : net_additions_non_taxable // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == net_deductions_not_allowable
          ? _value.net_deductions_not_allowable
          : net_deductions_not_allowable // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == prsi_er
          ? _value.prsi_er
          : prsi_er // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == notional_pay
          ? _value.notional_pay
          : notional_pay // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == pension
          ? _value.pension
          : pension // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == net_payment
          ? _value.net_payment
          : net_payment // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == gross_taxable_pay
          ? _value.gross_taxable_pay
          : gross_taxable_pay // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == non_taxable_adjustment
          ? _value.non_taxable_adjustment
          : non_taxable_adjustment // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == prsi_class
          ? _value.prsi_class
          : prsi_class // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == tax_code_uk
          ? _value.tax_code_uk
          : tax_code_uk // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == allowable_deduction
          ? _value.allowable_deduction
          : allowable_deduction // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == tax_credit
          ? _value.tax_credit
          : tax_credit // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == tax_credit_annual
          ? _value.tax_credit_annual
          : tax_credit_annual // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == cut_off
          ? _value.cut_off
          : cut_off // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == cut_off_annual
          ? _value.cut_off_annual
          : cut_off_annual // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == currency_id
          ? _value.currency_id
          : currency_id // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == insurable_weeks
          ? _value.insurable_weeks
          : insurable_weeks // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == calculation_basis
          ? _value.calculation_basis
          : calculation_basis // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == brightpay_id
          ? _value.brightpay_id
          : brightpay_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayslipsModelImpl implements _PayslipsModel {
  const _$PayslipsModelImpl(
      this.id,
      this.date,
      this.gross_pay,
      this.gross_additions_taxable,
      this.gross_deductions_non_taxable,
      this.paye,
      this.prsi_ee,
      this.income_levy,
      this.net_additions_non_taxable,
      this.net_deductions_not_allowable,
      this.payment,
      this.prsi_er,
      this.notional_pay,
      this.pension,
      this.user_id,
      this.net_payment,
      this.gross_taxable_pay,
      this.non_taxable_adjustment,
      this.prsi_class,
      this.tax_code_uk,
      this.allowable_deduction,
      this.tax_credit,
      this.tax_credit_annual,
      this.cut_off,
      this.cut_off_annual,
      this.currency_id,
      this.insurable_weeks,
      this.calculation_basis,
      this.brightpay_id);

  factory _$PayslipsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayslipsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? date;
  @override
  final num? gross_pay;
  @override
  final num? gross_additions_taxable;
  @override
  final num? gross_deductions_non_taxable;
  @override
  final num? paye;
  @override
  final num? prsi_ee;
  @override
  final num? income_levy;
  @override
  final num? net_additions_non_taxable;
  @override
  final num? net_deductions_not_allowable;
  @override
  final num? payment;
  @override
  final num? prsi_er;
  @override
  final num? notional_pay;
  @override
  final num? pension;
  @override
  final num? user_id;
  @override
  final num? net_payment;
  @override
  final num? gross_taxable_pay;
  @override
  final num? non_taxable_adjustment;
  @override
  final String? prsi_class;
  @override
  final String? tax_code_uk;
  @override
  final num? allowable_deduction;
  @override
  final num? tax_credit;
  @override
  final dynamic tax_credit_annual;
  @override
  final num? cut_off;
  @override
  final dynamic cut_off_annual;
  @override
  final num? currency_id;
  @override
  final num? insurable_weeks;
  @override
  final String? calculation_basis;
  @override
  final dynamic brightpay_id;

  @override
  String toString() {
    return 'PayslipsModel(id: $id, date: $date, gross_pay: $gross_pay, gross_additions_taxable: $gross_additions_taxable, gross_deductions_non_taxable: $gross_deductions_non_taxable, paye: $paye, prsi_ee: $prsi_ee, income_levy: $income_levy, net_additions_non_taxable: $net_additions_non_taxable, net_deductions_not_allowable: $net_deductions_not_allowable, payment: $payment, prsi_er: $prsi_er, notional_pay: $notional_pay, pension: $pension, user_id: $user_id, net_payment: $net_payment, gross_taxable_pay: $gross_taxable_pay, non_taxable_adjustment: $non_taxable_adjustment, prsi_class: $prsi_class, tax_code_uk: $tax_code_uk, allowable_deduction: $allowable_deduction, tax_credit: $tax_credit, tax_credit_annual: $tax_credit_annual, cut_off: $cut_off, cut_off_annual: $cut_off_annual, currency_id: $currency_id, insurable_weeks: $insurable_weeks, calculation_basis: $calculation_basis, brightpay_id: $brightpay_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayslipsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.gross_pay, gross_pay) ||
                other.gross_pay == gross_pay) &&
            (identical(other.gross_additions_taxable, gross_additions_taxable) ||
                other.gross_additions_taxable == gross_additions_taxable) &&
            (identical(other.gross_deductions_non_taxable, gross_deductions_non_taxable) ||
                other.gross_deductions_non_taxable ==
                    gross_deductions_non_taxable) &&
            (identical(other.paye, paye) || other.paye == paye) &&
            (identical(other.prsi_ee, prsi_ee) || other.prsi_ee == prsi_ee) &&
            (identical(other.income_levy, income_levy) ||
                other.income_levy == income_levy) &&
            (identical(other.net_additions_non_taxable, net_additions_non_taxable) ||
                other.net_additions_non_taxable == net_additions_non_taxable) &&
            (identical(other.net_deductions_not_allowable, net_deductions_not_allowable) ||
                other.net_deductions_not_allowable ==
                    net_deductions_not_allowable) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.prsi_er, prsi_er) || other.prsi_er == prsi_er) &&
            (identical(other.notional_pay, notional_pay) ||
                other.notional_pay == notional_pay) &&
            (identical(other.pension, pension) || other.pension == pension) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.net_payment, net_payment) ||
                other.net_payment == net_payment) &&
            (identical(other.gross_taxable_pay, gross_taxable_pay) ||
                other.gross_taxable_pay == gross_taxable_pay) &&
            (identical(other.non_taxable_adjustment, non_taxable_adjustment) ||
                other.non_taxable_adjustment == non_taxable_adjustment) &&
            (identical(other.prsi_class, prsi_class) ||
                other.prsi_class == prsi_class) &&
            (identical(other.tax_code_uk, tax_code_uk) ||
                other.tax_code_uk == tax_code_uk) &&
            (identical(other.allowable_deduction, allowable_deduction) ||
                other.allowable_deduction == allowable_deduction) &&
            (identical(other.tax_credit, tax_credit) ||
                other.tax_credit == tax_credit) &&
            const DeepCollectionEquality()
                .equals(other.tax_credit_annual, tax_credit_annual) &&
            (identical(other.cut_off, cut_off) || other.cut_off == cut_off) &&
            const DeepCollectionEquality()
                .equals(other.cut_off_annual, cut_off_annual) &&
            (identical(other.currency_id, currency_id) ||
                other.currency_id == currency_id) &&
            (identical(other.insurable_weeks, insurable_weeks) ||
                other.insurable_weeks == insurable_weeks) &&
            (identical(other.calculation_basis, calculation_basis) ||
                other.calculation_basis == calculation_basis) &&
            const DeepCollectionEquality()
                .equals(other.brightpay_id, brightpay_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        date,
        gross_pay,
        gross_additions_taxable,
        gross_deductions_non_taxable,
        paye,
        prsi_ee,
        income_levy,
        net_additions_non_taxable,
        net_deductions_not_allowable,
        payment,
        prsi_er,
        notional_pay,
        pension,
        user_id,
        net_payment,
        gross_taxable_pay,
        non_taxable_adjustment,
        prsi_class,
        tax_code_uk,
        allowable_deduction,
        tax_credit,
        const DeepCollectionEquality().hash(tax_credit_annual),
        cut_off,
        const DeepCollectionEquality().hash(cut_off_annual),
        currency_id,
        insurable_weeks,
        calculation_basis,
        const DeepCollectionEquality().hash(brightpay_id)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayslipsModelImplCopyWith<_$PayslipsModelImpl> get copyWith =>
      __$$PayslipsModelImplCopyWithImpl<_$PayslipsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayslipsModelImplToJson(
      this,
    );
  }
}

abstract class _PayslipsModel implements PayslipsModel {
  const factory _PayslipsModel(
      final int? id,
      final DateTime? date,
      final num? gross_pay,
      final num? gross_additions_taxable,
      final num? gross_deductions_non_taxable,
      final num? paye,
      final num? prsi_ee,
      final num? income_levy,
      final num? net_additions_non_taxable,
      final num? net_deductions_not_allowable,
      final num? payment,
      final num? prsi_er,
      final num? notional_pay,
      final num? pension,
      final num? user_id,
      final num? net_payment,
      final num? gross_taxable_pay,
      final num? non_taxable_adjustment,
      final String? prsi_class,
      final String? tax_code_uk,
      final num? allowable_deduction,
      final num? tax_credit,
      final dynamic tax_credit_annual,
      final num? cut_off,
      final dynamic cut_off_annual,
      final num? currency_id,
      final num? insurable_weeks,
      final String? calculation_basis,
      final dynamic brightpay_id) = _$PayslipsModelImpl;

  factory _PayslipsModel.fromJson(Map<String, dynamic> json) =
      _$PayslipsModelImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get date;
  @override
  num? get gross_pay;
  @override
  num? get gross_additions_taxable;
  @override
  num? get gross_deductions_non_taxable;
  @override
  num? get paye;
  @override
  num? get prsi_ee;
  @override
  num? get income_levy;
  @override
  num? get net_additions_non_taxable;
  @override
  num? get net_deductions_not_allowable;
  @override
  num? get payment;
  @override
  num? get prsi_er;
  @override
  num? get notional_pay;
  @override
  num? get pension;
  @override
  num? get user_id;
  @override
  num? get net_payment;
  @override
  num? get gross_taxable_pay;
  @override
  num? get non_taxable_adjustment;
  @override
  String? get prsi_class;
  @override
  String? get tax_code_uk;
  @override
  num? get allowable_deduction;
  @override
  num? get tax_credit;
  @override
  dynamic get tax_credit_annual;
  @override
  num? get cut_off;
  @override
  dynamic get cut_off_annual;
  @override
  num? get currency_id;
  @override
  num? get insurable_weeks;
  @override
  String? get calculation_basis;
  @override
  dynamic get brightpay_id;
  @override
  @JsonKey(ignore: true)
  _$$PayslipsModelImplCopyWith<_$PayslipsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
