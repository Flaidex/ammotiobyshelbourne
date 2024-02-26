// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_hours_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkingHoursListModel _$WorkingHoursListModelFromJson(
    Map<String, dynamic> json) {
  return _WorkingHoursListModel.fromJson(json);
}

/// @nodoc
mixin _$WorkingHoursListModel {
  List<WorkingHoursModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingHoursListModelCopyWith<WorkingHoursListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingHoursListModelCopyWith<$Res> {
  factory $WorkingHoursListModelCopyWith(WorkingHoursListModel value,
          $Res Function(WorkingHoursListModel) then) =
      _$WorkingHoursListModelCopyWithImpl<$Res, WorkingHoursListModel>;
  @useResult
  $Res call({List<WorkingHoursModel>? items});
}

/// @nodoc
class _$WorkingHoursListModelCopyWithImpl<$Res,
        $Val extends WorkingHoursListModel>
    implements $WorkingHoursListModelCopyWith<$Res> {
  _$WorkingHoursListModelCopyWithImpl(this._value, this._then);

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
              as List<WorkingHoursModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingHoursListModelImplCopyWith<$Res>
    implements $WorkingHoursListModelCopyWith<$Res> {
  factory _$$WorkingHoursListModelImplCopyWith(
          _$WorkingHoursListModelImpl value,
          $Res Function(_$WorkingHoursListModelImpl) then) =
      __$$WorkingHoursListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WorkingHoursModel>? items});
}

/// @nodoc
class __$$WorkingHoursListModelImplCopyWithImpl<$Res>
    extends _$WorkingHoursListModelCopyWithImpl<$Res,
        _$WorkingHoursListModelImpl>
    implements _$$WorkingHoursListModelImplCopyWith<$Res> {
  __$$WorkingHoursListModelImplCopyWithImpl(_$WorkingHoursListModelImpl _value,
      $Res Function(_$WorkingHoursListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$WorkingHoursListModelImpl(
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WorkingHoursModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingHoursListModelImpl implements _WorkingHoursListModel {
  const _$WorkingHoursListModelImpl(final List<WorkingHoursModel>? items)
      : _items = items;

  factory _$WorkingHoursListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingHoursListModelImplFromJson(json);

  final List<WorkingHoursModel>? _items;
  @override
  List<WorkingHoursModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkingHoursListModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingHoursListModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingHoursListModelImplCopyWith<_$WorkingHoursListModelImpl>
      get copyWith => __$$WorkingHoursListModelImplCopyWithImpl<
          _$WorkingHoursListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingHoursListModelImplToJson(
      this,
    );
  }
}

abstract class _WorkingHoursListModel implements WorkingHoursListModel {
  const factory _WorkingHoursListModel(final List<WorkingHoursModel>? items) =
      _$WorkingHoursListModelImpl;

  factory _WorkingHoursListModel.fromJson(Map<String, dynamic> json) =
      _$WorkingHoursListModelImpl.fromJson;

  @override
  List<WorkingHoursModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$WorkingHoursListModelImplCopyWith<_$WorkingHoursListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkingHoursModel _$WorkingHoursModelFromJson(Map<String, dynamic> json) {
  return _WorkingHoursModel.fromJson(json);
}

/// @nodoc
mixin _$WorkingHoursModel {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get period => throw _privateConstructorUsedError;
  num? get hours => throw _privateConstructorUsedError;
  num? get gross => throw _privateConstructorUsedError;
  num? get deductions => throw _privateConstructorUsedError;
  num? get net => throw _privateConstructorUsedError;
  num? get paid => throw _privateConstructorUsedError;
  num? get rate => throw _privateConstructorUsedError;
  num? get hours_away => throw _privateConstructorUsedError;
  num? get hours_away_rate => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  num? get car_park => throw _privateConstructorUsedError;
  num? get transfer => throw _privateConstructorUsedError;
  num? get training => throw _privateConstructorUsedError;
  num? get id_charge => throw _privateConstructorUsedError;
  num? get hours_rate => throw _privateConstructorUsedError;
  num? get away_total => throw _privateConstructorUsedError;
  num? get client_id => throw _privateConstructorUsedError;
  num? get user_id => throw _privateConstructorUsedError;
  DateTime? get hours_of => throw _privateConstructorUsedError;
  bool? get isExpanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingHoursModelCopyWith<WorkingHoursModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingHoursModelCopyWith<$Res> {
  factory $WorkingHoursModelCopyWith(
          WorkingHoursModel value, $Res Function(WorkingHoursModel) then) =
      _$WorkingHoursModelCopyWithImpl<$Res, WorkingHoursModel>;
  @useResult
  $Res call(
      {int? id,
      DateTime? period,
      num? hours,
      num? gross,
      num? deductions,
      num? net,
      num? paid,
      num? rate,
      num? hours_away,
      num? hours_away_rate,
      num? total,
      num? car_park,
      num? transfer,
      num? training,
      num? id_charge,
      num? hours_rate,
      num? away_total,
      num? client_id,
      num? user_id,
      DateTime? hours_of,
      bool? isExpanded});
}

/// @nodoc
class _$WorkingHoursModelCopyWithImpl<$Res, $Val extends WorkingHoursModel>
    implements $WorkingHoursModelCopyWith<$Res> {
  _$WorkingHoursModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? period = freezed,
    Object? hours = freezed,
    Object? gross = freezed,
    Object? deductions = freezed,
    Object? net = freezed,
    Object? paid = freezed,
    Object? rate = freezed,
    Object? hours_away = freezed,
    Object? hours_away_rate = freezed,
    Object? total = freezed,
    Object? car_park = freezed,
    Object? transfer = freezed,
    Object? training = freezed,
    Object? id_charge = freezed,
    Object? hours_rate = freezed,
    Object? away_total = freezed,
    Object? client_id = freezed,
    Object? user_id = freezed,
    Object? hours_of = freezed,
    Object? isExpanded = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as num?,
      gross: freezed == gross
          ? _value.gross
          : gross // ignore: cast_nullable_to_non_nullable
              as num?,
      deductions: freezed == deductions
          ? _value.deductions
          : deductions // ignore: cast_nullable_to_non_nullable
              as num?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as num?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as num?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
      hours_away: freezed == hours_away
          ? _value.hours_away
          : hours_away // ignore: cast_nullable_to_non_nullable
              as num?,
      hours_away_rate: freezed == hours_away_rate
          ? _value.hours_away_rate
          : hours_away_rate // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      car_park: freezed == car_park
          ? _value.car_park
          : car_park // ignore: cast_nullable_to_non_nullable
              as num?,
      transfer: freezed == transfer
          ? _value.transfer
          : transfer // ignore: cast_nullable_to_non_nullable
              as num?,
      training: freezed == training
          ? _value.training
          : training // ignore: cast_nullable_to_non_nullable
              as num?,
      id_charge: freezed == id_charge
          ? _value.id_charge
          : id_charge // ignore: cast_nullable_to_non_nullable
              as num?,
      hours_rate: freezed == hours_rate
          ? _value.hours_rate
          : hours_rate // ignore: cast_nullable_to_non_nullable
              as num?,
      away_total: freezed == away_total
          ? _value.away_total
          : away_total // ignore: cast_nullable_to_non_nullable
              as num?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as num?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as num?,
      hours_of: freezed == hours_of
          ? _value.hours_of
          : hours_of // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isExpanded: freezed == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingHoursModelImplCopyWith<$Res>
    implements $WorkingHoursModelCopyWith<$Res> {
  factory _$$WorkingHoursModelImplCopyWith(_$WorkingHoursModelImpl value,
          $Res Function(_$WorkingHoursModelImpl) then) =
      __$$WorkingHoursModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? period,
      num? hours,
      num? gross,
      num? deductions,
      num? net,
      num? paid,
      num? rate,
      num? hours_away,
      num? hours_away_rate,
      num? total,
      num? car_park,
      num? transfer,
      num? training,
      num? id_charge,
      num? hours_rate,
      num? away_total,
      num? client_id,
      num? user_id,
      DateTime? hours_of,
      bool? isExpanded});
}

/// @nodoc
class __$$WorkingHoursModelImplCopyWithImpl<$Res>
    extends _$WorkingHoursModelCopyWithImpl<$Res, _$WorkingHoursModelImpl>
    implements _$$WorkingHoursModelImplCopyWith<$Res> {
  __$$WorkingHoursModelImplCopyWithImpl(_$WorkingHoursModelImpl _value,
      $Res Function(_$WorkingHoursModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? period = freezed,
    Object? hours = freezed,
    Object? gross = freezed,
    Object? deductions = freezed,
    Object? net = freezed,
    Object? paid = freezed,
    Object? rate = freezed,
    Object? hours_away = freezed,
    Object? hours_away_rate = freezed,
    Object? total = freezed,
    Object? car_park = freezed,
    Object? transfer = freezed,
    Object? training = freezed,
    Object? id_charge = freezed,
    Object? hours_rate = freezed,
    Object? away_total = freezed,
    Object? client_id = freezed,
    Object? user_id = freezed,
    Object? hours_of = freezed,
    Object? isExpanded = freezed,
  }) {
    return _then(_$WorkingHoursModelImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == gross
          ? _value.gross
          : gross // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == deductions
          ? _value.deductions
          : deductions // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == hours_away
          ? _value.hours_away
          : hours_away // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == hours_away_rate
          ? _value.hours_away_rate
          : hours_away_rate // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == car_park
          ? _value.car_park
          : car_park // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == transfer
          ? _value.transfer
          : transfer // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == training
          ? _value.training
          : training // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == id_charge
          ? _value.id_charge
          : id_charge // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == hours_rate
          ? _value.hours_rate
          : hours_rate // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == away_total
          ? _value.away_total
          : away_total // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == hours_of
          ? _value.hours_of
          : hours_of // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingHoursModelImpl implements _WorkingHoursModel {
  const _$WorkingHoursModelImpl(
      this.id,
      this.period,
      this.hours,
      this.gross,
      this.deductions,
      this.net,
      this.paid,
      this.rate,
      this.hours_away,
      this.hours_away_rate,
      this.total,
      this.car_park,
      this.transfer,
      this.training,
      this.id_charge,
      this.hours_rate,
      this.away_total,
      this.client_id,
      this.user_id,
      this.hours_of,
      this.isExpanded);

  factory _$WorkingHoursModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingHoursModelImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? period;
  @override
  final num? hours;
  @override
  final num? gross;
  @override
  final num? deductions;
  @override
  final num? net;
  @override
  final num? paid;
  @override
  final num? rate;
  @override
  final num? hours_away;
  @override
  final num? hours_away_rate;
  @override
  final num? total;
  @override
  final num? car_park;
  @override
  final num? transfer;
  @override
  final num? training;
  @override
  final num? id_charge;
  @override
  final num? hours_rate;
  @override
  final num? away_total;
  @override
  final num? client_id;
  @override
  final num? user_id;
  @override
  final DateTime? hours_of;
  @override
  final bool? isExpanded;

  @override
  String toString() {
    return 'WorkingHoursModel(id: $id, period: $period, hours: $hours, gross: $gross, deductions: $deductions, net: $net, paid: $paid, rate: $rate, hours_away: $hours_away, hours_away_rate: $hours_away_rate, total: $total, car_park: $car_park, transfer: $transfer, training: $training, id_charge: $id_charge, hours_rate: $hours_rate, away_total: $away_total, client_id: $client_id, user_id: $user_id, hours_of: $hours_of, isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingHoursModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.gross, gross) || other.gross == gross) &&
            (identical(other.deductions, deductions) ||
                other.deductions == deductions) &&
            (identical(other.net, net) || other.net == net) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.hours_away, hours_away) ||
                other.hours_away == hours_away) &&
            (identical(other.hours_away_rate, hours_away_rate) ||
                other.hours_away_rate == hours_away_rate) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.car_park, car_park) ||
                other.car_park == car_park) &&
            (identical(other.transfer, transfer) ||
                other.transfer == transfer) &&
            (identical(other.training, training) ||
                other.training == training) &&
            (identical(other.id_charge, id_charge) ||
                other.id_charge == id_charge) &&
            (identical(other.hours_rate, hours_rate) ||
                other.hours_rate == hours_rate) &&
            (identical(other.away_total, away_total) ||
                other.away_total == away_total) &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.hours_of, hours_of) ||
                other.hours_of == hours_of) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        period,
        hours,
        gross,
        deductions,
        net,
        paid,
        rate,
        hours_away,
        hours_away_rate,
        total,
        car_park,
        transfer,
        training,
        id_charge,
        hours_rate,
        away_total,
        client_id,
        user_id,
        hours_of,
        isExpanded
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingHoursModelImplCopyWith<_$WorkingHoursModelImpl> get copyWith =>
      __$$WorkingHoursModelImplCopyWithImpl<_$WorkingHoursModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingHoursModelImplToJson(
      this,
    );
  }
}

abstract class _WorkingHoursModel implements WorkingHoursModel {
  const factory _WorkingHoursModel(
      final int? id,
      final DateTime? period,
      final num? hours,
      final num? gross,
      final num? deductions,
      final num? net,
      final num? paid,
      final num? rate,
      final num? hours_away,
      final num? hours_away_rate,
      final num? total,
      final num? car_park,
      final num? transfer,
      final num? training,
      final num? id_charge,
      final num? hours_rate,
      final num? away_total,
      final num? client_id,
      final num? user_id,
      final DateTime? hours_of,
      final bool? isExpanded) = _$WorkingHoursModelImpl;

  factory _WorkingHoursModel.fromJson(Map<String, dynamic> json) =
      _$WorkingHoursModelImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get period;
  @override
  num? get hours;
  @override
  num? get gross;
  @override
  num? get deductions;
  @override
  num? get net;
  @override
  num? get paid;
  @override
  num? get rate;
  @override
  num? get hours_away;
  @override
  num? get hours_away_rate;
  @override
  num? get total;
  @override
  num? get car_park;
  @override
  num? get transfer;
  @override
  num? get training;
  @override
  num? get id_charge;
  @override
  num? get hours_rate;
  @override
  num? get away_total;
  @override
  num? get client_id;
  @override
  num? get user_id;
  @override
  DateTime? get hours_of;
  @override
  bool? get isExpanded;
  @override
  @JsonKey(ignore: true)
  _$$WorkingHoursModelImplCopyWith<_$WorkingHoursModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
