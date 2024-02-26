// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_invoice_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesInvoiceListModel _$SalesInvoiceListModelFromJson(
    Map<String, dynamic> json) {
  return _SalesInvoiceListModel.fromJson(json);
}

/// @nodoc
mixin _$SalesInvoiceListModel {
  List<SalesInvoiceModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesInvoiceListModelCopyWith<SalesInvoiceListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesInvoiceListModelCopyWith<$Res> {
  factory $SalesInvoiceListModelCopyWith(SalesInvoiceListModel value,
          $Res Function(SalesInvoiceListModel) then) =
      _$SalesInvoiceListModelCopyWithImpl<$Res, SalesInvoiceListModel>;
  @useResult
  $Res call({List<SalesInvoiceModel>? items});
}

/// @nodoc
class _$SalesInvoiceListModelCopyWithImpl<$Res,
        $Val extends SalesInvoiceListModel>
    implements $SalesInvoiceListModelCopyWith<$Res> {
  _$SalesInvoiceListModelCopyWithImpl(this._value, this._then);

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
              as List<SalesInvoiceModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesInvoiceListModelImplCopyWith<$Res>
    implements $SalesInvoiceListModelCopyWith<$Res> {
  factory _$$SalesInvoiceListModelImplCopyWith(
          _$SalesInvoiceListModelImpl value,
          $Res Function(_$SalesInvoiceListModelImpl) then) =
      __$$SalesInvoiceListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SalesInvoiceModel>? items});
}

/// @nodoc
class __$$SalesInvoiceListModelImplCopyWithImpl<$Res>
    extends _$SalesInvoiceListModelCopyWithImpl<$Res,
        _$SalesInvoiceListModelImpl>
    implements _$$SalesInvoiceListModelImplCopyWith<$Res> {
  __$$SalesInvoiceListModelImplCopyWithImpl(_$SalesInvoiceListModelImpl _value,
      $Res Function(_$SalesInvoiceListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$SalesInvoiceListModelImpl(
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SalesInvoiceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesInvoiceListModelImpl implements _SalesInvoiceListModel {
  const _$SalesInvoiceListModelImpl(final List<SalesInvoiceModel>? items)
      : _items = items;

  factory _$SalesInvoiceListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesInvoiceListModelImplFromJson(json);

  final List<SalesInvoiceModel>? _items;
  @override
  List<SalesInvoiceModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalesInvoiceListModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesInvoiceListModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesInvoiceListModelImplCopyWith<_$SalesInvoiceListModelImpl>
      get copyWith => __$$SalesInvoiceListModelImplCopyWithImpl<
          _$SalesInvoiceListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesInvoiceListModelImplToJson(
      this,
    );
  }
}

abstract class _SalesInvoiceListModel implements SalesInvoiceListModel {
  const factory _SalesInvoiceListModel(final List<SalesInvoiceModel>? items) =
      _$SalesInvoiceListModelImpl;

  factory _SalesInvoiceListModel.fromJson(Map<String, dynamic> json) =
      _$SalesInvoiceListModelImpl.fromJson;

  @override
  List<SalesInvoiceModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$SalesInvoiceListModelImplCopyWith<_$SalesInvoiceListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SalesInvoiceModel _$SalesInvoiceModelFromJson(Map<String, dynamic> json) {
  return _SalesInvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$SalesInvoiceModel {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get gross => throw _privateConstructorUsedError;
  num? get vatRate => throw _privateConstructorUsedError;
  double? get vatAmount => throw _privateConstructorUsedError;
  double? get net => throw _privateConstructorUsedError;
  num? get purchaseInvoice => throw _privateConstructorUsedError;
  num? get feeNet => throw _privateConstructorUsedError;
  num? get userId => throw _privateConstructorUsedError;
  num? get expenses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesInvoiceModelCopyWith<SalesInvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesInvoiceModelCopyWith<$Res> {
  factory $SalesInvoiceModelCopyWith(
          SalesInvoiceModel value, $Res Function(SalesInvoiceModel) then) =
      _$SalesInvoiceModelCopyWithImpl<$Res, SalesInvoiceModel>;
  @useResult
  $Res call(
      {int? id,
      DateTime? date,
      String? description,
      double? gross,
      num? vatRate,
      double? vatAmount,
      double? net,
      num? purchaseInvoice,
      num? feeNet,
      num? userId,
      num? expenses});
}

/// @nodoc
class _$SalesInvoiceModelCopyWithImpl<$Res, $Val extends SalesInvoiceModel>
    implements $SalesInvoiceModelCopyWith<$Res> {
  _$SalesInvoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? gross = freezed,
    Object? vatRate = freezed,
    Object? vatAmount = freezed,
    Object? net = freezed,
    Object? purchaseInvoice = freezed,
    Object? feeNet = freezed,
    Object? userId = freezed,
    Object? expenses = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      gross: freezed == gross
          ? _value.gross
          : gross // ignore: cast_nullable_to_non_nullable
              as double?,
      vatRate: freezed == vatRate
          ? _value.vatRate
          : vatRate // ignore: cast_nullable_to_non_nullable
              as num?,
      vatAmount: freezed == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as double?,
      purchaseInvoice: freezed == purchaseInvoice
          ? _value.purchaseInvoice
          : purchaseInvoice // ignore: cast_nullable_to_non_nullable
              as num?,
      feeNet: freezed == feeNet
          ? _value.feeNet
          : feeNet // ignore: cast_nullable_to_non_nullable
              as num?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as num?,
      expenses: freezed == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesInvoiceModelImplCopyWith<$Res>
    implements $SalesInvoiceModelCopyWith<$Res> {
  factory _$$SalesInvoiceModelImplCopyWith(_$SalesInvoiceModelImpl value,
          $Res Function(_$SalesInvoiceModelImpl) then) =
      __$$SalesInvoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? date,
      String? description,
      double? gross,
      num? vatRate,
      double? vatAmount,
      double? net,
      num? purchaseInvoice,
      num? feeNet,
      num? userId,
      num? expenses});
}

/// @nodoc
class __$$SalesInvoiceModelImplCopyWithImpl<$Res>
    extends _$SalesInvoiceModelCopyWithImpl<$Res, _$SalesInvoiceModelImpl>
    implements _$$SalesInvoiceModelImplCopyWith<$Res> {
  __$$SalesInvoiceModelImplCopyWithImpl(_$SalesInvoiceModelImpl _value,
      $Res Function(_$SalesInvoiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? gross = freezed,
    Object? vatRate = freezed,
    Object? vatAmount = freezed,
    Object? net = freezed,
    Object? purchaseInvoice = freezed,
    Object? feeNet = freezed,
    Object? userId = freezed,
    Object? expenses = freezed,
  }) {
    return _then(_$SalesInvoiceModelImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == gross
          ? _value.gross
          : gross // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == vatRate
          ? _value.vatRate
          : vatRate // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == purchaseInvoice
          ? _value.purchaseInvoice
          : purchaseInvoice // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == feeNet
          ? _value.feeNet
          : feeNet // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesInvoiceModelImpl implements _SalesInvoiceModel {
  const _$SalesInvoiceModelImpl(
      this.id,
      this.date,
      this.description,
      this.gross,
      this.vatRate,
      this.vatAmount,
      this.net,
      this.purchaseInvoice,
      this.feeNet,
      this.userId,
      this.expenses);

  factory _$SalesInvoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesInvoiceModelImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? date;
  @override
  final String? description;
  @override
  final double? gross;
  @override
  final num? vatRate;
  @override
  final double? vatAmount;
  @override
  final double? net;
  @override
  final num? purchaseInvoice;
  @override
  final num? feeNet;
  @override
  final num? userId;
  @override
  final num? expenses;

  @override
  String toString() {
    return 'SalesInvoiceModel(id: $id, date: $date, description: $description, gross: $gross, vatRate: $vatRate, vatAmount: $vatAmount, net: $net, purchaseInvoice: $purchaseInvoice, feeNet: $feeNet, userId: $userId, expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesInvoiceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.gross, gross) || other.gross == gross) &&
            (identical(other.vatRate, vatRate) || other.vatRate == vatRate) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.net, net) || other.net == net) &&
            (identical(other.purchaseInvoice, purchaseInvoice) ||
                other.purchaseInvoice == purchaseInvoice) &&
            (identical(other.feeNet, feeNet) || other.feeNet == feeNet) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.expenses, expenses) ||
                other.expenses == expenses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, description, gross,
      vatRate, vatAmount, net, purchaseInvoice, feeNet, userId, expenses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesInvoiceModelImplCopyWith<_$SalesInvoiceModelImpl> get copyWith =>
      __$$SalesInvoiceModelImplCopyWithImpl<_$SalesInvoiceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesInvoiceModelImplToJson(
      this,
    );
  }
}

abstract class _SalesInvoiceModel implements SalesInvoiceModel {
  const factory _SalesInvoiceModel(
      final int? id,
      final DateTime? date,
      final String? description,
      final double? gross,
      final num? vatRate,
      final double? vatAmount,
      final double? net,
      final num? purchaseInvoice,
      final num? feeNet,
      final num? userId,
      final num? expenses) = _$SalesInvoiceModelImpl;

  factory _SalesInvoiceModel.fromJson(Map<String, dynamic> json) =
      _$SalesInvoiceModelImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get date;
  @override
  String? get description;
  @override
  double? get gross;
  @override
  num? get vatRate;
  @override
  double? get vatAmount;
  @override
  double? get net;
  @override
  num? get purchaseInvoice;
  @override
  num? get feeNet;
  @override
  num? get userId;
  @override
  num? get expenses;
  @override
  @JsonKey(ignore: true)
  _$$SalesInvoiceModelImplCopyWith<_$SalesInvoiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
