// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_statements_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankStatementsListModel _$BankStatementsListModelFromJson(
    Map<String, dynamic> json) {
  return _BankStatementsListModel.fromJson(json);
}

/// @nodoc
mixin _$BankStatementsListModel {
  List<BankStatementsModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankStatementsListModelCopyWith<BankStatementsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankStatementsListModelCopyWith<$Res> {
  factory $BankStatementsListModelCopyWith(BankStatementsListModel value,
          $Res Function(BankStatementsListModel) then) =
      _$BankStatementsListModelCopyWithImpl<$Res, BankStatementsListModel>;
  @useResult
  $Res call({List<BankStatementsModel>? items});
}

/// @nodoc
class _$BankStatementsListModelCopyWithImpl<$Res,
        $Val extends BankStatementsListModel>
    implements $BankStatementsListModelCopyWith<$Res> {
  _$BankStatementsListModelCopyWithImpl(this._value, this._then);

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
              as List<BankStatementsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankStatementsListModelImplCopyWith<$Res>
    implements $BankStatementsListModelCopyWith<$Res> {
  factory _$$BankStatementsListModelImplCopyWith(
          _$BankStatementsListModelImpl value,
          $Res Function(_$BankStatementsListModelImpl) then) =
      __$$BankStatementsListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BankStatementsModel>? items});
}

/// @nodoc
class __$$BankStatementsListModelImplCopyWithImpl<$Res>
    extends _$BankStatementsListModelCopyWithImpl<$Res,
        _$BankStatementsListModelImpl>
    implements _$$BankStatementsListModelImplCopyWith<$Res> {
  __$$BankStatementsListModelImplCopyWithImpl(
      _$BankStatementsListModelImpl _value,
      $Res Function(_$BankStatementsListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$BankStatementsListModelImpl(
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BankStatementsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankStatementsListModelImpl implements _BankStatementsListModel {
  const _$BankStatementsListModelImpl(final List<BankStatementsModel>? items)
      : _items = items;

  factory _$BankStatementsListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankStatementsListModelImplFromJson(json);

  final List<BankStatementsModel>? _items;
  @override
  List<BankStatementsModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BankStatementsListModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankStatementsListModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankStatementsListModelImplCopyWith<_$BankStatementsListModelImpl>
      get copyWith => __$$BankStatementsListModelImplCopyWithImpl<
          _$BankStatementsListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankStatementsListModelImplToJson(
      this,
    );
  }
}

abstract class _BankStatementsListModel implements BankStatementsListModel {
  const factory _BankStatementsListModel(
      final List<BankStatementsModel>? items) = _$BankStatementsListModelImpl;

  factory _BankStatementsListModel.fromJson(Map<String, dynamic> json) =
      _$BankStatementsListModelImpl.fromJson;

  @override
  List<BankStatementsModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$BankStatementsListModelImplCopyWith<_$BankStatementsListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BankStatementsModel _$BankStatementsModelFromJson(Map<String, dynamic> json) {
  return _BankStatementsModel.fromJson(json);
}

/// @nodoc
mixin _$BankStatementsModel {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  num? get debit => throw _privateConstructorUsedError;
  num? get credit => throw _privateConstructorUsedError;
  num? get balance => throw _privateConstructorUsedError;
  num? get user_id => throw _privateConstructorUsedError;
  num? get company_id => throw _privateConstructorUsedError;
  num? get account_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankStatementsModelCopyWith<BankStatementsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankStatementsModelCopyWith<$Res> {
  factory $BankStatementsModelCopyWith(
          BankStatementsModel value, $Res Function(BankStatementsModel) then) =
      _$BankStatementsModelCopyWithImpl<$Res, BankStatementsModel>;
  @useResult
  $Res call(
      {int? id,
      DateTime? date,
      String? details,
      num? debit,
      num? credit,
      num? balance,
      num? user_id,
      num? company_id,
      num? account_id});
}

/// @nodoc
class _$BankStatementsModelCopyWithImpl<$Res, $Val extends BankStatementsModel>
    implements $BankStatementsModelCopyWith<$Res> {
  _$BankStatementsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? details = freezed,
    Object? debit = freezed,
    Object? credit = freezed,
    Object? balance = freezed,
    Object? user_id = freezed,
    Object? company_id = freezed,
    Object? account_id = freezed,
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
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      debit: freezed == debit
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as num?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as num?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as num?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as num?,
      account_id: freezed == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankStatementsModelImplCopyWith<$Res>
    implements $BankStatementsModelCopyWith<$Res> {
  factory _$$BankStatementsModelImplCopyWith(_$BankStatementsModelImpl value,
          $Res Function(_$BankStatementsModelImpl) then) =
      __$$BankStatementsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? date,
      String? details,
      num? debit,
      num? credit,
      num? balance,
      num? user_id,
      num? company_id,
      num? account_id});
}

/// @nodoc
class __$$BankStatementsModelImplCopyWithImpl<$Res>
    extends _$BankStatementsModelCopyWithImpl<$Res, _$BankStatementsModelImpl>
    implements _$$BankStatementsModelImplCopyWith<$Res> {
  __$$BankStatementsModelImplCopyWithImpl(_$BankStatementsModelImpl _value,
      $Res Function(_$BankStatementsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? details = freezed,
    Object? debit = freezed,
    Object? credit = freezed,
    Object? balance = freezed,
    Object? user_id = freezed,
    Object? company_id = freezed,
    Object? account_id = freezed,
  }) {
    return _then(_$BankStatementsModelImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == debit
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankStatementsModelImpl implements _BankStatementsModel {
  const _$BankStatementsModelImpl(
      this.id,
      this.date,
      this.details,
      this.debit,
      this.credit,
      this.balance,
      this.user_id,
      this.company_id,
      this.account_id);

  factory _$BankStatementsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankStatementsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? date;
  @override
  final String? details;
  @override
  final num? debit;
  @override
  final num? credit;
  @override
  final num? balance;
  @override
  final num? user_id;
  @override
  final num? company_id;
  @override
  final num? account_id;

  @override
  String toString() {
    return 'BankStatementsModel(id: $id, date: $date, details: $details, debit: $debit, credit: $credit, balance: $balance, user_id: $user_id, company_id: $company_id, account_id: $account_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankStatementsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.debit, debit) || other.debit == debit) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.account_id, account_id) ||
                other.account_id == account_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, details, debit, credit,
      balance, user_id, company_id, account_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankStatementsModelImplCopyWith<_$BankStatementsModelImpl> get copyWith =>
      __$$BankStatementsModelImplCopyWithImpl<_$BankStatementsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankStatementsModelImplToJson(
      this,
    );
  }
}

abstract class _BankStatementsModel implements BankStatementsModel {
  const factory _BankStatementsModel(
      final int? id,
      final DateTime? date,
      final String? details,
      final num? debit,
      final num? credit,
      final num? balance,
      final num? user_id,
      final num? company_id,
      final num? account_id) = _$BankStatementsModelImpl;

  factory _BankStatementsModel.fromJson(Map<String, dynamic> json) =
      _$BankStatementsModelImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get date;
  @override
  String? get details;
  @override
  num? get debit;
  @override
  num? get credit;
  @override
  num? get balance;
  @override
  num? get user_id;
  @override
  num? get company_id;
  @override
  num? get account_id;
  @override
  @JsonKey(ignore: true)
  _$$BankStatementsModelImplCopyWith<_$BankStatementsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
