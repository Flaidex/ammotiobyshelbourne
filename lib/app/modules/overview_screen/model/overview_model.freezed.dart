// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OverviewModel _$OverviewModelFromJson(Map<String, dynamic> json) {
  return _OverviewModel.fromJson(json);
}

/// @nodoc
mixin _$OverviewModel {
  Invoice? get payslip => throw _privateConstructorUsedError;
  Invoice? get working_hours => throw _privateConstructorUsedError;
  Invoice? get invoice => throw _privateConstructorUsedError;
  Expenses? get expenses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OverviewModelCopyWith<OverviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewModelCopyWith<$Res> {
  factory $OverviewModelCopyWith(
          OverviewModel value, $Res Function(OverviewModel) then) =
      _$OverviewModelCopyWithImpl<$Res, OverviewModel>;
  @useResult
  $Res call(
      {Invoice? payslip,
      Invoice? working_hours,
      Invoice? invoice,
      Expenses? expenses});

  $InvoiceCopyWith<$Res>? get payslip;
  $InvoiceCopyWith<$Res>? get working_hours;
  $InvoiceCopyWith<$Res>? get invoice;
  $ExpensesCopyWith<$Res>? get expenses;
}

/// @nodoc
class _$OverviewModelCopyWithImpl<$Res, $Val extends OverviewModel>
    implements $OverviewModelCopyWith<$Res> {
  _$OverviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payslip = freezed,
    Object? working_hours = freezed,
    Object? invoice = freezed,
    Object? expenses = freezed,
  }) {
    return _then(_value.copyWith(
      payslip: freezed == payslip
          ? _value.payslip
          : payslip // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      working_hours: freezed == working_hours
          ? _value.working_hours
          : working_hours // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      expenses: freezed == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as Expenses?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<$Res>? get payslip {
    if (_value.payslip == null) {
      return null;
    }

    return $InvoiceCopyWith<$Res>(_value.payslip!, (value) {
      return _then(_value.copyWith(payslip: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<$Res>? get working_hours {
    if (_value.working_hours == null) {
      return null;
    }

    return $InvoiceCopyWith<$Res>(_value.working_hours!, (value) {
      return _then(_value.copyWith(working_hours: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<$Res>? get invoice {
    if (_value.invoice == null) {
      return null;
    }

    return $InvoiceCopyWith<$Res>(_value.invoice!, (value) {
      return _then(_value.copyWith(invoice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpensesCopyWith<$Res>? get expenses {
    if (_value.expenses == null) {
      return null;
    }

    return $ExpensesCopyWith<$Res>(_value.expenses!, (value) {
      return _then(_value.copyWith(expenses: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OverviewModelImplCopyWith<$Res>
    implements $OverviewModelCopyWith<$Res> {
  factory _$$OverviewModelImplCopyWith(
          _$OverviewModelImpl value, $Res Function(_$OverviewModelImpl) then) =
      __$$OverviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Invoice? payslip,
      Invoice? working_hours,
      Invoice? invoice,
      Expenses? expenses});

  @override
  $InvoiceCopyWith<$Res>? get payslip;
  @override
  $InvoiceCopyWith<$Res>? get working_hours;
  @override
  $InvoiceCopyWith<$Res>? get invoice;
  @override
  $ExpensesCopyWith<$Res>? get expenses;
}

/// @nodoc
class __$$OverviewModelImplCopyWithImpl<$Res>
    extends _$OverviewModelCopyWithImpl<$Res, _$OverviewModelImpl>
    implements _$$OverviewModelImplCopyWith<$Res> {
  __$$OverviewModelImplCopyWithImpl(
      _$OverviewModelImpl _value, $Res Function(_$OverviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payslip = freezed,
    Object? working_hours = freezed,
    Object? invoice = freezed,
    Object? expenses = freezed,
  }) {
    return _then(_$OverviewModelImpl(
      payslip: freezed == payslip
          ? _value.payslip
          : payslip // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      working_hours: freezed == working_hours
          ? _value.working_hours
          : working_hours // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      expenses: freezed == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as Expenses?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OverviewModelImpl implements _OverviewModel {
  const _$OverviewModelImpl(
      {this.payslip, this.working_hours, this.invoice, this.expenses});

  factory _$OverviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewModelImplFromJson(json);

  @override
  final Invoice? payslip;
  @override
  final Invoice? working_hours;
  @override
  final Invoice? invoice;
  @override
  final Expenses? expenses;

  @override
  String toString() {
    return 'OverviewModel(payslip: $payslip, working_hours: $working_hours, invoice: $invoice, expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewModelImpl &&
            (identical(other.payslip, payslip) || other.payslip == payslip) &&
            (identical(other.working_hours, working_hours) ||
                other.working_hours == working_hours) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.expenses, expenses) ||
                other.expenses == expenses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, payslip, working_hours, invoice, expenses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewModelImplCopyWith<_$OverviewModelImpl> get copyWith =>
      __$$OverviewModelImplCopyWithImpl<_$OverviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewModelImplToJson(
      this,
    );
  }
}

abstract class _OverviewModel implements OverviewModel {
  const factory _OverviewModel(
      {final Invoice? payslip,
      final Invoice? working_hours,
      final Invoice? invoice,
      final Expenses? expenses}) = _$OverviewModelImpl;

  factory _OverviewModel.fromJson(Map<String, dynamic> json) =
      _$OverviewModelImpl.fromJson;

  @override
  Invoice? get payslip;
  @override
  Invoice? get working_hours;
  @override
  Invoice? get invoice;
  @override
  Expenses? get expenses;
  @override
  @JsonKey(ignore: true)
  _$$OverviewModelImplCopyWith<_$OverviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Expenses _$ExpensesFromJson(Map<String, dynamic> json) {
  return _Expenses.fromJson(json);
}

/// @nodoc
mixin _$Expenses {
  num? get value => throw _privateConstructorUsedError;
  num? get travel => throw _privateConstructorUsedError;
  num? get business => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpensesCopyWith<Expenses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesCopyWith<$Res> {
  factory $ExpensesCopyWith(Expenses value, $Res Function(Expenses) then) =
      _$ExpensesCopyWithImpl<$Res, Expenses>;
  @useResult
  $Res call({num? value, num? travel, num? business});
}

/// @nodoc
class _$ExpensesCopyWithImpl<$Res, $Val extends Expenses>
    implements $ExpensesCopyWith<$Res> {
  _$ExpensesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? travel = freezed,
    Object? business = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      travel: freezed == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as num?,
      business: freezed == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpensesImplCopyWith<$Res>
    implements $ExpensesCopyWith<$Res> {
  factory _$$ExpensesImplCopyWith(
          _$ExpensesImpl value, $Res Function(_$ExpensesImpl) then) =
      __$$ExpensesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? value, num? travel, num? business});
}

/// @nodoc
class __$$ExpensesImplCopyWithImpl<$Res>
    extends _$ExpensesCopyWithImpl<$Res, _$ExpensesImpl>
    implements _$$ExpensesImplCopyWith<$Res> {
  __$$ExpensesImplCopyWithImpl(
      _$ExpensesImpl _value, $Res Function(_$ExpensesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? travel = freezed,
    Object? business = freezed,
  }) {
    return _then(_$ExpensesImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      travel: freezed == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as num?,
      business: freezed == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpensesImpl implements _Expenses {
  const _$ExpensesImpl({this.value, this.travel, this.business});

  factory _$ExpensesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpensesImplFromJson(json);

  @override
  final num? value;
  @override
  final num? travel;
  @override
  final num? business;

  @override
  String toString() {
    return 'Expenses(value: $value, travel: $travel, business: $business)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpensesImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.travel, travel) || other.travel == travel) &&
            (identical(other.business, business) ||
                other.business == business));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, travel, business);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesImplCopyWith<_$ExpensesImpl> get copyWith =>
      __$$ExpensesImplCopyWithImpl<_$ExpensesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpensesImplToJson(
      this,
    );
  }
}

abstract class _Expenses implements Expenses {
  const factory _Expenses(
      {final num? value,
      final num? travel,
      final num? business}) = _$ExpensesImpl;

  factory _Expenses.fromJson(Map<String, dynamic> json) =
      _$ExpensesImpl.fromJson;

  @override
  num? get value;
  @override
  num? get travel;
  @override
  num? get business;
  @override
  @JsonKey(ignore: true)
  _$$ExpensesImplCopyWith<_$ExpensesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  num? get value => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call({num? value, String? date});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? value, String? date});
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? date = freezed,
  }) {
    return _then(_$InvoiceImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceImpl implements _Invoice {
  const _$InvoiceImpl({this.value, this.date});

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final num? value;
  @override
  final String? date;

  @override
  String toString() {
    return 'Invoice(value: $value, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(
      this,
    );
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice({final num? value, final String? date}) =
      _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  num? get value;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
