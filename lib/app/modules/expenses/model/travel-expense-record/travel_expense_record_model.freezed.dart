// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_expense_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelExpenseRecordModel _$TravelExpenseRecordModelFromJson(
    Map<String, dynamic> json) {
  return _TravelExpenseRecordModel.fromJson(json);
}

/// @nodoc
mixin _$TravelExpenseRecordModel {
  int? get test => throw _privateConstructorUsedError;
  String? get local_rate => throw _privateConstructorUsedError;
  TravelRecord? get record => throw _privateConstructorUsedError;
  int? get mileageToDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelExpenseRecordModelCopyWith<TravelExpenseRecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelExpenseRecordModelCopyWith<$Res> {
  factory $TravelExpenseRecordModelCopyWith(TravelExpenseRecordModel value,
          $Res Function(TravelExpenseRecordModel) then) =
      _$TravelExpenseRecordModelCopyWithImpl<$Res, TravelExpenseRecordModel>;
  @useResult
  $Res call(
      {int? test,
      String? local_rate,
      TravelRecord? record,
      int? mileageToDate});

  $TravelRecordCopyWith<$Res>? get record;
}

/// @nodoc
class _$TravelExpenseRecordModelCopyWithImpl<$Res,
        $Val extends TravelExpenseRecordModel>
    implements $TravelExpenseRecordModelCopyWith<$Res> {
  _$TravelExpenseRecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = freezed,
    Object? local_rate = freezed,
    Object? record = freezed,
    Object? mileageToDate = freezed,
  }) {
    return _then(_value.copyWith(
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      local_rate: freezed == local_rate
          ? _value.local_rate
          : local_rate // ignore: cast_nullable_to_non_nullable
              as String?,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as TravelRecord?,
      mileageToDate: freezed == mileageToDate
          ? _value.mileageToDate
          : mileageToDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelRecordCopyWith<$Res>? get record {
    if (_value.record == null) {
      return null;
    }

    return $TravelRecordCopyWith<$Res>(_value.record!, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TravelExpenseRecordModelImplCopyWith<$Res>
    implements $TravelExpenseRecordModelCopyWith<$Res> {
  factory _$$TravelExpenseRecordModelImplCopyWith(
          _$TravelExpenseRecordModelImpl value,
          $Res Function(_$TravelExpenseRecordModelImpl) then) =
      __$$TravelExpenseRecordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? test,
      String? local_rate,
      TravelRecord? record,
      int? mileageToDate});

  @override
  $TravelRecordCopyWith<$Res>? get record;
}

/// @nodoc
class __$$TravelExpenseRecordModelImplCopyWithImpl<$Res>
    extends _$TravelExpenseRecordModelCopyWithImpl<$Res,
        _$TravelExpenseRecordModelImpl>
    implements _$$TravelExpenseRecordModelImplCopyWith<$Res> {
  __$$TravelExpenseRecordModelImplCopyWithImpl(
      _$TravelExpenseRecordModelImpl _value,
      $Res Function(_$TravelExpenseRecordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = freezed,
    Object? local_rate = freezed,
    Object? record = freezed,
    Object? mileageToDate = freezed,
  }) {
    return _then(_$TravelExpenseRecordModelImpl(
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      local_rate: freezed == local_rate
          ? _value.local_rate
          : local_rate // ignore: cast_nullable_to_non_nullable
              as String?,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as TravelRecord?,
      mileageToDate: freezed == mileageToDate
          ? _value.mileageToDate
          : mileageToDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelExpenseRecordModelImpl implements _TravelExpenseRecordModel {
  const _$TravelExpenseRecordModelImpl(
      {this.test, this.local_rate, this.record, this.mileageToDate});

  factory _$TravelExpenseRecordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelExpenseRecordModelImplFromJson(json);

  @override
  final int? test;
  @override
  final String? local_rate;
  @override
  final TravelRecord? record;
  @override
  final int? mileageToDate;

  @override
  String toString() {
    return 'TravelExpenseRecordModel(test: $test, local_rate: $local_rate, record: $record, mileageToDate: $mileageToDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelExpenseRecordModelImpl &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.local_rate, local_rate) ||
                other.local_rate == local_rate) &&
            (identical(other.record, record) || other.record == record) &&
            (identical(other.mileageToDate, mileageToDate) ||
                other.mileageToDate == mileageToDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, test, local_rate, record, mileageToDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelExpenseRecordModelImplCopyWith<_$TravelExpenseRecordModelImpl>
      get copyWith => __$$TravelExpenseRecordModelImplCopyWithImpl<
          _$TravelExpenseRecordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelExpenseRecordModelImplToJson(
      this,
    );
  }
}

abstract class _TravelExpenseRecordModel implements TravelExpenseRecordModel {
  const factory _TravelExpenseRecordModel(
      {final int? test,
      final String? local_rate,
      final TravelRecord? record,
      final int? mileageToDate}) = _$TravelExpenseRecordModelImpl;

  factory _TravelExpenseRecordModel.fromJson(Map<String, dynamic> json) =
      _$TravelExpenseRecordModelImpl.fromJson;

  @override
  int? get test;
  @override
  String? get local_rate;
  @override
  TravelRecord? get record;
  @override
  int? get mileageToDate;
  @override
  @JsonKey(ignore: true)
  _$$TravelExpenseRecordModelImplCopyWith<_$TravelExpenseRecordModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TravelRecord _$TravelRecordFromJson(Map<String, dynamic> json) {
  return _TravelRecord.fromJson(json);
}

/// @nodoc
mixin _$TravelRecord {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get incurred => throw _privateConstructorUsedError;
  DateTime? get submitted => throw _privateConstructorUsedError;
  DateTime? get approved => throw _privateConstructorUsedError;
  DateTime? get paid => throw _privateConstructorUsedError;
  int? get type_id => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  String? get client => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get start_location => throw _privateConstructorUsedError;
  String? get end_location => throw _privateConstructorUsedError;
  DateTime? get start_time => throw _privateConstructorUsedError;
  DateTime? get end_time => throw _privateConstructorUsedError;
  num? get nights => throw _privateConstructorUsedError;
  dynamic get rates_location => throw _privateConstructorUsedError;
  int? get rates_local_currency_id => throw _privateConstructorUsedError;
  num? get rates_local_currency_rate => throw _privateConstructorUsedError;
  num? get rates_hours_5 => throw _privateConstructorUsedError;
  num? get rates_hours_10 => throw _privateConstructorUsedError;
  num? get rates_overnight => throw _privateConstructorUsedError;
  num? get rates_overnight_additional_subsistence_value =>
      throw _privateConstructorUsedError;
  dynamic get rates_overnight_additional_subsistence_currency_id =>
      throw _privateConstructorUsedError;
  num? get rates_overnight_additional_subsistence_currency_rate =>
      throw _privateConstructorUsedError;
  dynamic get rates_overnight_additional_accommodation =>
      throw _privateConstructorUsedError;
  dynamic get rates_overnight_additional_accommodation_description =>
      throw _privateConstructorUsedError;
  dynamic get rates_overnight_additional_accommodation_value =>
      throw _privateConstructorUsedError;
  dynamic get accomodation_required_____ => throw _privateConstructorUsedError;
  dynamic get accomodation_nights_____ => throw _privateConstructorUsedError;
  num? get use_car => throw _privateConstructorUsedError;
  dynamic get motor_distance => throw _privateConstructorUsedError;
  dynamic get car_make_model => throw _privateConstructorUsedError;
  dynamic get motor_start_location => throw _privateConstructorUsedError;
  dynamic get motor_end_location => throw _privateConstructorUsedError;
  int? get engine_size_id => throw _privateConstructorUsedError;
  dynamic get mileage_value => throw _privateConstructorUsedError;
  int? get status_id => throw _privateConstructorUsedError;
  int? get expense_id => throw _privateConstructorUsedError;
  dynamic get overnight_per_night_base => throw _privateConstructorUsedError;
  dynamic get overnight_per_night_additional_subsistence =>
      throw _privateConstructorUsedError;
  dynamic get overnight_per_night_additional_accommodation =>
      throw _privateConstructorUsedError;
  dynamic get overnight_per_night_total => throw _privateConstructorUsedError;
  dynamic get overnight => throw _privateConstructorUsedError;
  num? get subsistence => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  DateTime? get added_time => throw _privateConstructorUsedError;
  num? get nights1 => throw _privateConstructorUsedError;
  num? get nights2 => throw _privateConstructorUsedError;
  int? get currency_id => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  DateTime? get rejected => throw _privateConstructorUsedError;
  dynamic get rejected_by => throw _privateConstructorUsedError;
  dynamic get paidBy => throw _privateConstructorUsedError;
  dynamic get rejected_reason => throw _privateConstructorUsedError;
  DateTime? get deleted_at => throw _privateConstructorUsedError;
  dynamic get deleted_by => throw _privateConstructorUsedError;
  String? get status_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelRecordCopyWith<TravelRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelRecordCopyWith<$Res> {
  factory $TravelRecordCopyWith(
          TravelRecord value, $Res Function(TravelRecord) then) =
      _$TravelRecordCopyWithImpl<$Res, TravelRecord>;
  @useResult
  $Res call(
      {int? id,
      DateTime? incurred,
      DateTime? submitted,
      DateTime? approved,
      DateTime? paid,
      int? type_id,
      String? purpose,
      String? client,
      String? location,
      String? start_location,
      String? end_location,
      DateTime? start_time,
      DateTime? end_time,
      num? nights,
      dynamic rates_location,
      int? rates_local_currency_id,
      num? rates_local_currency_rate,
      num? rates_hours_5,
      num? rates_hours_10,
      num? rates_overnight,
      num? rates_overnight_additional_subsistence_value,
      dynamic rates_overnight_additional_subsistence_currency_id,
      num? rates_overnight_additional_subsistence_currency_rate,
      dynamic rates_overnight_additional_accommodation,
      dynamic rates_overnight_additional_accommodation_description,
      dynamic rates_overnight_additional_accommodation_value,
      dynamic accomodation_required_____,
      dynamic accomodation_nights_____,
      num? use_car,
      dynamic motor_distance,
      dynamic car_make_model,
      dynamic motor_start_location,
      dynamic motor_end_location,
      int? engine_size_id,
      dynamic mileage_value,
      int? status_id,
      int? expense_id,
      dynamic overnight_per_night_base,
      dynamic overnight_per_night_additional_subsistence,
      dynamic overnight_per_night_additional_accommodation,
      dynamic overnight_per_night_total,
      dynamic overnight,
      num? subsistence,
      num? total,
      int? user_id,
      DateTime? added_time,
      num? nights1,
      num? nights2,
      int? currency_id,
      dynamic status,
      DateTime? rejected,
      dynamic rejected_by,
      dynamic paidBy,
      dynamic rejected_reason,
      DateTime? deleted_at,
      dynamic deleted_by,
      String? status_name});
}

/// @nodoc
class _$TravelRecordCopyWithImpl<$Res, $Val extends TravelRecord>
    implements $TravelRecordCopyWith<$Res> {
  _$TravelRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? incurred = freezed,
    Object? submitted = freezed,
    Object? approved = freezed,
    Object? paid = freezed,
    Object? type_id = freezed,
    Object? purpose = freezed,
    Object? client = freezed,
    Object? location = freezed,
    Object? start_location = freezed,
    Object? end_location = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? nights = freezed,
    Object? rates_location = freezed,
    Object? rates_local_currency_id = freezed,
    Object? rates_local_currency_rate = freezed,
    Object? rates_hours_5 = freezed,
    Object? rates_hours_10 = freezed,
    Object? rates_overnight = freezed,
    Object? rates_overnight_additional_subsistence_value = freezed,
    Object? rates_overnight_additional_subsistence_currency_id = freezed,
    Object? rates_overnight_additional_subsistence_currency_rate = freezed,
    Object? rates_overnight_additional_accommodation = freezed,
    Object? rates_overnight_additional_accommodation_description = freezed,
    Object? rates_overnight_additional_accommodation_value = freezed,
    Object? accomodation_required_____ = freezed,
    Object? accomodation_nights_____ = freezed,
    Object? use_car = freezed,
    Object? motor_distance = freezed,
    Object? car_make_model = freezed,
    Object? motor_start_location = freezed,
    Object? motor_end_location = freezed,
    Object? engine_size_id = freezed,
    Object? mileage_value = freezed,
    Object? status_id = freezed,
    Object? expense_id = freezed,
    Object? overnight_per_night_base = freezed,
    Object? overnight_per_night_additional_subsistence = freezed,
    Object? overnight_per_night_additional_accommodation = freezed,
    Object? overnight_per_night_total = freezed,
    Object? overnight = freezed,
    Object? subsistence = freezed,
    Object? total = freezed,
    Object? user_id = freezed,
    Object? added_time = freezed,
    Object? nights1 = freezed,
    Object? nights2 = freezed,
    Object? currency_id = freezed,
    Object? status = freezed,
    Object? rejected = freezed,
    Object? rejected_by = freezed,
    Object? paidBy = freezed,
    Object? rejected_reason = freezed,
    Object? deleted_at = freezed,
    Object? deleted_by = freezed,
    Object? status_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      incurred: freezed == incurred
          ? _value.incurred
          : incurred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      submitted: freezed == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type_id: freezed == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      start_location: freezed == start_location
          ? _value.start_location
          : start_location // ignore: cast_nullable_to_non_nullable
              as String?,
      end_location: freezed == end_location
          ? _value.end_location
          : end_location // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nights: freezed == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_location: freezed == rates_location
          ? _value.rates_location
          : rates_location // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rates_local_currency_id: freezed == rates_local_currency_id
          ? _value.rates_local_currency_id
          : rates_local_currency_id // ignore: cast_nullable_to_non_nullable
              as int?,
      rates_local_currency_rate: freezed == rates_local_currency_rate
          ? _value.rates_local_currency_rate
          : rates_local_currency_rate // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_hours_5: freezed == rates_hours_5
          ? _value.rates_hours_5
          : rates_hours_5 // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_hours_10: freezed == rates_hours_10
          ? _value.rates_hours_10
          : rates_hours_10 // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_overnight: freezed == rates_overnight
          ? _value.rates_overnight
          : rates_overnight // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_overnight_additional_subsistence_value: freezed ==
              rates_overnight_additional_subsistence_value
          ? _value.rates_overnight_additional_subsistence_value
          : rates_overnight_additional_subsistence_value // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_overnight_additional_subsistence_currency_id: freezed ==
              rates_overnight_additional_subsistence_currency_id
          ? _value.rates_overnight_additional_subsistence_currency_id
          : rates_overnight_additional_subsistence_currency_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rates_overnight_additional_subsistence_currency_rate: freezed ==
              rates_overnight_additional_subsistence_currency_rate
          ? _value.rates_overnight_additional_subsistence_currency_rate
          : rates_overnight_additional_subsistence_currency_rate // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_overnight_additional_accommodation: freezed ==
              rates_overnight_additional_accommodation
          ? _value.rates_overnight_additional_accommodation
          : rates_overnight_additional_accommodation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rates_overnight_additional_accommodation_description: freezed ==
              rates_overnight_additional_accommodation_description
          ? _value.rates_overnight_additional_accommodation_description
          : rates_overnight_additional_accommodation_description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rates_overnight_additional_accommodation_value: freezed ==
              rates_overnight_additional_accommodation_value
          ? _value.rates_overnight_additional_accommodation_value
          : rates_overnight_additional_accommodation_value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accomodation_required_____: freezed == accomodation_required_____
          ? _value.accomodation_required_____
          : accomodation_required_____ // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accomodation_nights_____: freezed == accomodation_nights_____
          ? _value.accomodation_nights_____
          : accomodation_nights_____ // ignore: cast_nullable_to_non_nullable
              as dynamic,
      use_car: freezed == use_car
          ? _value.use_car
          : use_car // ignore: cast_nullable_to_non_nullable
              as num?,
      motor_distance: freezed == motor_distance
          ? _value.motor_distance
          : motor_distance // ignore: cast_nullable_to_non_nullable
              as dynamic,
      car_make_model: freezed == car_make_model
          ? _value.car_make_model
          : car_make_model // ignore: cast_nullable_to_non_nullable
              as dynamic,
      motor_start_location: freezed == motor_start_location
          ? _value.motor_start_location
          : motor_start_location // ignore: cast_nullable_to_non_nullable
              as dynamic,
      motor_end_location: freezed == motor_end_location
          ? _value.motor_end_location
          : motor_end_location // ignore: cast_nullable_to_non_nullable
              as dynamic,
      engine_size_id: freezed == engine_size_id
          ? _value.engine_size_id
          : engine_size_id // ignore: cast_nullable_to_non_nullable
              as int?,
      mileage_value: freezed == mileage_value
          ? _value.mileage_value
          : mileage_value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status_id: freezed == status_id
          ? _value.status_id
          : status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      expense_id: freezed == expense_id
          ? _value.expense_id
          : expense_id // ignore: cast_nullable_to_non_nullable
              as int?,
      overnight_per_night_base: freezed == overnight_per_night_base
          ? _value.overnight_per_night_base
          : overnight_per_night_base // ignore: cast_nullable_to_non_nullable
              as dynamic,
      overnight_per_night_additional_subsistence: freezed ==
              overnight_per_night_additional_subsistence
          ? _value.overnight_per_night_additional_subsistence
          : overnight_per_night_additional_subsistence // ignore: cast_nullable_to_non_nullable
              as dynamic,
      overnight_per_night_additional_accommodation: freezed ==
              overnight_per_night_additional_accommodation
          ? _value.overnight_per_night_additional_accommodation
          : overnight_per_night_additional_accommodation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      overnight_per_night_total: freezed == overnight_per_night_total
          ? _value.overnight_per_night_total
          : overnight_per_night_total // ignore: cast_nullable_to_non_nullable
              as dynamic,
      overnight: freezed == overnight
          ? _value.overnight
          : overnight // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subsistence: freezed == subsistence
          ? _value.subsistence
          : subsistence // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      added_time: freezed == added_time
          ? _value.added_time
          : added_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nights1: freezed == nights1
          ? _value.nights1
          : nights1 // ignore: cast_nullable_to_non_nullable
              as num?,
      nights2: freezed == nights2
          ? _value.nights2
          : nights2 // ignore: cast_nullable_to_non_nullable
              as num?,
      currency_id: freezed == currency_id
          ? _value.currency_id
          : currency_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejected: freezed == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejected_by: freezed == rejected_by
          ? _value.rejected_by
          : rejected_by // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paidBy: freezed == paidBy
          ? _value.paidBy
          : paidBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejected_reason: freezed == rejected_reason
          ? _value.rejected_reason
          : rejected_reason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleted_by: freezed == deleted_by
          ? _value.deleted_by
          : deleted_by // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status_name: freezed == status_name
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelRecordImplCopyWith<$Res>
    implements $TravelRecordCopyWith<$Res> {
  factory _$$TravelRecordImplCopyWith(
          _$TravelRecordImpl value, $Res Function(_$TravelRecordImpl) then) =
      __$$TravelRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? incurred,
      DateTime? submitted,
      DateTime? approved,
      DateTime? paid,
      int? type_id,
      String? purpose,
      String? client,
      String? location,
      String? start_location,
      String? end_location,
      DateTime? start_time,
      DateTime? end_time,
      num? nights,
      dynamic rates_location,
      int? rates_local_currency_id,
      num? rates_local_currency_rate,
      num? rates_hours_5,
      num? rates_hours_10,
      num? rates_overnight,
      num? rates_overnight_additional_subsistence_value,
      dynamic rates_overnight_additional_subsistence_currency_id,
      num? rates_overnight_additional_subsistence_currency_rate,
      dynamic rates_overnight_additional_accommodation,
      dynamic rates_overnight_additional_accommodation_description,
      dynamic rates_overnight_additional_accommodation_value,
      dynamic accomodation_required_____,
      dynamic accomodation_nights_____,
      num? use_car,
      dynamic motor_distance,
      dynamic car_make_model,
      dynamic motor_start_location,
      dynamic motor_end_location,
      int? engine_size_id,
      dynamic mileage_value,
      int? status_id,
      int? expense_id,
      dynamic overnight_per_night_base,
      dynamic overnight_per_night_additional_subsistence,
      dynamic overnight_per_night_additional_accommodation,
      dynamic overnight_per_night_total,
      dynamic overnight,
      num? subsistence,
      num? total,
      int? user_id,
      DateTime? added_time,
      num? nights1,
      num? nights2,
      int? currency_id,
      dynamic status,
      DateTime? rejected,
      dynamic rejected_by,
      dynamic paidBy,
      dynamic rejected_reason,
      DateTime? deleted_at,
      dynamic deleted_by,
      String? status_name});
}

/// @nodoc
class __$$TravelRecordImplCopyWithImpl<$Res>
    extends _$TravelRecordCopyWithImpl<$Res, _$TravelRecordImpl>
    implements _$$TravelRecordImplCopyWith<$Res> {
  __$$TravelRecordImplCopyWithImpl(
      _$TravelRecordImpl _value, $Res Function(_$TravelRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? incurred = freezed,
    Object? submitted = freezed,
    Object? approved = freezed,
    Object? paid = freezed,
    Object? type_id = freezed,
    Object? purpose = freezed,
    Object? client = freezed,
    Object? location = freezed,
    Object? start_location = freezed,
    Object? end_location = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? nights = freezed,
    Object? rates_location = freezed,
    Object? rates_local_currency_id = freezed,
    Object? rates_local_currency_rate = freezed,
    Object? rates_hours_5 = freezed,
    Object? rates_hours_10 = freezed,
    Object? rates_overnight = freezed,
    Object? rates_overnight_additional_subsistence_value = freezed,
    Object? rates_overnight_additional_subsistence_currency_id = freezed,
    Object? rates_overnight_additional_subsistence_currency_rate = freezed,
    Object? rates_overnight_additional_accommodation = freezed,
    Object? rates_overnight_additional_accommodation_description = freezed,
    Object? rates_overnight_additional_accommodation_value = freezed,
    Object? accomodation_required_____ = freezed,
    Object? accomodation_nights_____ = freezed,
    Object? use_car = freezed,
    Object? motor_distance = freezed,
    Object? car_make_model = freezed,
    Object? motor_start_location = freezed,
    Object? motor_end_location = freezed,
    Object? engine_size_id = freezed,
    Object? mileage_value = freezed,
    Object? status_id = freezed,
    Object? expense_id = freezed,
    Object? overnight_per_night_base = freezed,
    Object? overnight_per_night_additional_subsistence = freezed,
    Object? overnight_per_night_additional_accommodation = freezed,
    Object? overnight_per_night_total = freezed,
    Object? overnight = freezed,
    Object? subsistence = freezed,
    Object? total = freezed,
    Object? user_id = freezed,
    Object? added_time = freezed,
    Object? nights1 = freezed,
    Object? nights2 = freezed,
    Object? currency_id = freezed,
    Object? status = freezed,
    Object? rejected = freezed,
    Object? rejected_by = freezed,
    Object? paidBy = freezed,
    Object? rejected_reason = freezed,
    Object? deleted_at = freezed,
    Object? deleted_by = freezed,
    Object? status_name = freezed,
  }) {
    return _then(_$TravelRecordImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      incurred: freezed == incurred
          ? _value.incurred
          : incurred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      submitted: freezed == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type_id: freezed == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      start_location: freezed == start_location
          ? _value.start_location
          : start_location // ignore: cast_nullable_to_non_nullable
              as String?,
      end_location: freezed == end_location
          ? _value.end_location
          : end_location // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nights: freezed == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_location: freezed == rates_location
          ? _value.rates_location
          : rates_location // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rates_local_currency_id: freezed == rates_local_currency_id
          ? _value.rates_local_currency_id
          : rates_local_currency_id // ignore: cast_nullable_to_non_nullable
              as int?,
      rates_local_currency_rate: freezed == rates_local_currency_rate
          ? _value.rates_local_currency_rate
          : rates_local_currency_rate // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_hours_5: freezed == rates_hours_5
          ? _value.rates_hours_5
          : rates_hours_5 // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_hours_10: freezed == rates_hours_10
          ? _value.rates_hours_10
          : rates_hours_10 // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_overnight: freezed == rates_overnight
          ? _value.rates_overnight
          : rates_overnight // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_overnight_additional_subsistence_value: freezed ==
              rates_overnight_additional_subsistence_value
          ? _value.rates_overnight_additional_subsistence_value
          : rates_overnight_additional_subsistence_value // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_overnight_additional_subsistence_currency_id: freezed ==
              rates_overnight_additional_subsistence_currency_id
          ? _value.rates_overnight_additional_subsistence_currency_id
          : rates_overnight_additional_subsistence_currency_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rates_overnight_additional_subsistence_currency_rate: freezed ==
              rates_overnight_additional_subsistence_currency_rate
          ? _value.rates_overnight_additional_subsistence_currency_rate
          : rates_overnight_additional_subsistence_currency_rate // ignore: cast_nullable_to_non_nullable
              as num?,
      rates_overnight_additional_accommodation: freezed ==
              rates_overnight_additional_accommodation
          ? _value.rates_overnight_additional_accommodation
          : rates_overnight_additional_accommodation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rates_overnight_additional_accommodation_description: freezed ==
              rates_overnight_additional_accommodation_description
          ? _value.rates_overnight_additional_accommodation_description
          : rates_overnight_additional_accommodation_description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rates_overnight_additional_accommodation_value: freezed ==
              rates_overnight_additional_accommodation_value
          ? _value.rates_overnight_additional_accommodation_value
          : rates_overnight_additional_accommodation_value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accomodation_required_____: freezed == accomodation_required_____
          ? _value.accomodation_required_____
          : accomodation_required_____ // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accomodation_nights_____: freezed == accomodation_nights_____
          ? _value.accomodation_nights_____
          : accomodation_nights_____ // ignore: cast_nullable_to_non_nullable
              as dynamic,
      use_car: freezed == use_car
          ? _value.use_car
          : use_car // ignore: cast_nullable_to_non_nullable
              as num?,
      motor_distance: freezed == motor_distance
          ? _value.motor_distance
          : motor_distance // ignore: cast_nullable_to_non_nullable
              as dynamic,
      car_make_model: freezed == car_make_model
          ? _value.car_make_model
          : car_make_model // ignore: cast_nullable_to_non_nullable
              as dynamic,
      motor_start_location: freezed == motor_start_location
          ? _value.motor_start_location
          : motor_start_location // ignore: cast_nullable_to_non_nullable
              as dynamic,
      motor_end_location: freezed == motor_end_location
          ? _value.motor_end_location
          : motor_end_location // ignore: cast_nullable_to_non_nullable
              as dynamic,
      engine_size_id: freezed == engine_size_id
          ? _value.engine_size_id
          : engine_size_id // ignore: cast_nullable_to_non_nullable
              as int?,
      mileage_value: freezed == mileage_value
          ? _value.mileage_value
          : mileage_value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status_id: freezed == status_id
          ? _value.status_id
          : status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      expense_id: freezed == expense_id
          ? _value.expense_id
          : expense_id // ignore: cast_nullable_to_non_nullable
              as int?,
      overnight_per_night_base: freezed == overnight_per_night_base
          ? _value.overnight_per_night_base
          : overnight_per_night_base // ignore: cast_nullable_to_non_nullable
              as dynamic,
      overnight_per_night_additional_subsistence: freezed ==
              overnight_per_night_additional_subsistence
          ? _value.overnight_per_night_additional_subsistence
          : overnight_per_night_additional_subsistence // ignore: cast_nullable_to_non_nullable
              as dynamic,
      overnight_per_night_additional_accommodation: freezed ==
              overnight_per_night_additional_accommodation
          ? _value.overnight_per_night_additional_accommodation
          : overnight_per_night_additional_accommodation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      overnight_per_night_total: freezed == overnight_per_night_total
          ? _value.overnight_per_night_total
          : overnight_per_night_total // ignore: cast_nullable_to_non_nullable
              as dynamic,
      overnight: freezed == overnight
          ? _value.overnight
          : overnight // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subsistence: freezed == subsistence
          ? _value.subsistence
          : subsistence // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      added_time: freezed == added_time
          ? _value.added_time
          : added_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nights1: freezed == nights1
          ? _value.nights1
          : nights1 // ignore: cast_nullable_to_non_nullable
              as num?,
      nights2: freezed == nights2
          ? _value.nights2
          : nights2 // ignore: cast_nullable_to_non_nullable
              as num?,
      currency_id: freezed == currency_id
          ? _value.currency_id
          : currency_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejected: freezed == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejected_by: freezed == rejected_by
          ? _value.rejected_by
          : rejected_by // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paidBy: freezed == paidBy
          ? _value.paidBy
          : paidBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejected_reason: freezed == rejected_reason
          ? _value.rejected_reason
          : rejected_reason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleted_by: freezed == deleted_by
          ? _value.deleted_by
          : deleted_by // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status_name: freezed == status_name
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelRecordImpl implements _TravelRecord {
  const _$TravelRecordImpl(
      {this.id,
      this.incurred,
      this.submitted,
      this.approved,
      this.paid,
      this.type_id,
      this.purpose,
      this.client,
      this.location,
      this.start_location,
      this.end_location,
      this.start_time,
      this.end_time,
      this.nights,
      this.rates_location,
      this.rates_local_currency_id,
      this.rates_local_currency_rate,
      this.rates_hours_5,
      this.rates_hours_10,
      this.rates_overnight,
      this.rates_overnight_additional_subsistence_value,
      this.rates_overnight_additional_subsistence_currency_id,
      this.rates_overnight_additional_subsistence_currency_rate,
      this.rates_overnight_additional_accommodation,
      this.rates_overnight_additional_accommodation_description,
      this.rates_overnight_additional_accommodation_value,
      this.accomodation_required_____,
      this.accomodation_nights_____,
      this.use_car,
      this.motor_distance,
      this.car_make_model,
      this.motor_start_location,
      this.motor_end_location,
      this.engine_size_id,
      this.mileage_value,
      this.status_id,
      this.expense_id,
      this.overnight_per_night_base,
      this.overnight_per_night_additional_subsistence,
      this.overnight_per_night_additional_accommodation,
      this.overnight_per_night_total,
      this.overnight,
      this.subsistence,
      this.total,
      this.user_id,
      this.added_time,
      this.nights1,
      this.nights2,
      this.currency_id,
      this.status,
      this.rejected,
      this.rejected_by,
      this.paidBy,
      this.rejected_reason,
      this.deleted_at,
      this.deleted_by,
      this.status_name});

  factory _$TravelRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelRecordImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? incurred;
  @override
  final DateTime? submitted;
  @override
  final DateTime? approved;
  @override
  final DateTime? paid;
  @override
  final int? type_id;
  @override
  final String? purpose;
  @override
  final String? client;
  @override
  final String? location;
  @override
  final String? start_location;
  @override
  final String? end_location;
  @override
  final DateTime? start_time;
  @override
  final DateTime? end_time;
  @override
  final num? nights;
  @override
  final dynamic rates_location;
  @override
  final int? rates_local_currency_id;
  @override
  final num? rates_local_currency_rate;
  @override
  final num? rates_hours_5;
  @override
  final num? rates_hours_10;
  @override
  final num? rates_overnight;
  @override
  final num? rates_overnight_additional_subsistence_value;
  @override
  final dynamic rates_overnight_additional_subsistence_currency_id;
  @override
  final num? rates_overnight_additional_subsistence_currency_rate;
  @override
  final dynamic rates_overnight_additional_accommodation;
  @override
  final dynamic rates_overnight_additional_accommodation_description;
  @override
  final dynamic rates_overnight_additional_accommodation_value;
  @override
  final dynamic accomodation_required_____;
  @override
  final dynamic accomodation_nights_____;
  @override
  final num? use_car;
  @override
  final dynamic motor_distance;
  @override
  final dynamic car_make_model;
  @override
  final dynamic motor_start_location;
  @override
  final dynamic motor_end_location;
  @override
  final int? engine_size_id;
  @override
  final dynamic mileage_value;
  @override
  final int? status_id;
  @override
  final int? expense_id;
  @override
  final dynamic overnight_per_night_base;
  @override
  final dynamic overnight_per_night_additional_subsistence;
  @override
  final dynamic overnight_per_night_additional_accommodation;
  @override
  final dynamic overnight_per_night_total;
  @override
  final dynamic overnight;
  @override
  final num? subsistence;
  @override
  final num? total;
  @override
  final int? user_id;
  @override
  final DateTime? added_time;
  @override
  final num? nights1;
  @override
  final num? nights2;
  @override
  final int? currency_id;
  @override
  final dynamic status;
  @override
  final DateTime? rejected;
  @override
  final dynamic rejected_by;
  @override
  final dynamic paidBy;
  @override
  final dynamic rejected_reason;
  @override
  final DateTime? deleted_at;
  @override
  final dynamic deleted_by;
  @override
  final String? status_name;

  @override
  String toString() {
    return 'TravelRecord(id: $id, incurred: $incurred, submitted: $submitted, approved: $approved, paid: $paid, type_id: $type_id, purpose: $purpose, client: $client, location: $location, start_location: $start_location, end_location: $end_location, start_time: $start_time, end_time: $end_time, nights: $nights, rates_location: $rates_location, rates_local_currency_id: $rates_local_currency_id, rates_local_currency_rate: $rates_local_currency_rate, rates_hours_5: $rates_hours_5, rates_hours_10: $rates_hours_10, rates_overnight: $rates_overnight, rates_overnight_additional_subsistence_value: $rates_overnight_additional_subsistence_value, rates_overnight_additional_subsistence_currency_id: $rates_overnight_additional_subsistence_currency_id, rates_overnight_additional_subsistence_currency_rate: $rates_overnight_additional_subsistence_currency_rate, rates_overnight_additional_accommodation: $rates_overnight_additional_accommodation, rates_overnight_additional_accommodation_description: $rates_overnight_additional_accommodation_description, rates_overnight_additional_accommodation_value: $rates_overnight_additional_accommodation_value, accomodation_required_____: $accomodation_required_____, accomodation_nights_____: $accomodation_nights_____, use_car: $use_car, motor_distance: $motor_distance, car_make_model: $car_make_model, motor_start_location: $motor_start_location, motor_end_location: $motor_end_location, engine_size_id: $engine_size_id, mileage_value: $mileage_value, status_id: $status_id, expense_id: $expense_id, overnight_per_night_base: $overnight_per_night_base, overnight_per_night_additional_subsistence: $overnight_per_night_additional_subsistence, overnight_per_night_additional_accommodation: $overnight_per_night_additional_accommodation, overnight_per_night_total: $overnight_per_night_total, overnight: $overnight, subsistence: $subsistence, total: $total, user_id: $user_id, added_time: $added_time, nights1: $nights1, nights2: $nights2, currency_id: $currency_id, status: $status, rejected: $rejected, rejected_by: $rejected_by, paidBy: $paidBy, rejected_reason: $rejected_reason, deleted_at: $deleted_at, deleted_by: $deleted_by, status_name: $status_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.incurred, incurred) ||
                other.incurred == incurred) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.type_id, type_id) || other.type_id == type_id) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.start_location, start_location) ||
                other.start_location == start_location) &&
            (identical(other.end_location, end_location) ||
                other.end_location == end_location) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time) &&
            (identical(other.nights, nights) || other.nights == nights) &&
            const DeepCollectionEquality()
                .equals(other.rates_location, rates_location) &&
            (identical(other.rates_local_currency_id, rates_local_currency_id) ||
                other.rates_local_currency_id == rates_local_currency_id) &&
            (identical(other.rates_local_currency_rate, rates_local_currency_rate) ||
                other.rates_local_currency_rate == rates_local_currency_rate) &&
            (identical(other.rates_hours_5, rates_hours_5) ||
                other.rates_hours_5 == rates_hours_5) &&
            (identical(other.rates_hours_10, rates_hours_10) ||
                other.rates_hours_10 == rates_hours_10) &&
            (identical(other.rates_overnight, rates_overnight) ||
                other.rates_overnight == rates_overnight) &&
            (identical(other.rates_overnight_additional_subsistence_value, rates_overnight_additional_subsistence_value) ||
                other.rates_overnight_additional_subsistence_value ==
                    rates_overnight_additional_subsistence_value) &&
            const DeepCollectionEquality().equals(
                other.rates_overnight_additional_subsistence_currency_id,
                rates_overnight_additional_subsistence_currency_id) &&
            (identical(other.rates_overnight_additional_subsistence_currency_rate, rates_overnight_additional_subsistence_currency_rate) ||
                other.rates_overnight_additional_subsistence_currency_rate ==
                    rates_overnight_additional_subsistence_currency_rate) &&
            const DeepCollectionEquality().equals(
                other.rates_overnight_additional_accommodation,
                rates_overnight_additional_accommodation) &&
            const DeepCollectionEquality().equals(
                other.rates_overnight_additional_accommodation_description,
                rates_overnight_additional_accommodation_description) &&
            const DeepCollectionEquality().equals(
                other.rates_overnight_additional_accommodation_value,
                rates_overnight_additional_accommodation_value) &&
            const DeepCollectionEquality().equals(
                other.accomodation_required_____, accomodation_required_____) &&
            const DeepCollectionEquality().equals(other.accomodation_nights_____, accomodation_nights_____) &&
            (identical(other.use_car, use_car) || other.use_car == use_car) &&
            const DeepCollectionEquality().equals(other.motor_distance, motor_distance) &&
            const DeepCollectionEquality().equals(other.car_make_model, car_make_model) &&
            const DeepCollectionEquality().equals(other.motor_start_location, motor_start_location) &&
            const DeepCollectionEquality().equals(other.motor_end_location, motor_end_location) &&
            (identical(other.engine_size_id, engine_size_id) || other.engine_size_id == engine_size_id) &&
            const DeepCollectionEquality().equals(other.mileage_value, mileage_value) &&
            (identical(other.status_id, status_id) || other.status_id == status_id) &&
            (identical(other.expense_id, expense_id) || other.expense_id == expense_id) &&
            const DeepCollectionEquality().equals(other.overnight_per_night_base, overnight_per_night_base) &&
            const DeepCollectionEquality().equals(other.overnight_per_night_additional_subsistence, overnight_per_night_additional_subsistence) &&
            const DeepCollectionEquality().equals(other.overnight_per_night_additional_accommodation, overnight_per_night_additional_accommodation) &&
            const DeepCollectionEquality().equals(other.overnight_per_night_total, overnight_per_night_total) &&
            const DeepCollectionEquality().equals(other.overnight, overnight) &&
            (identical(other.subsistence, subsistence) || other.subsistence == subsistence) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.added_time, added_time) || other.added_time == added_time) &&
            (identical(other.nights1, nights1) || other.nights1 == nights1) &&
            (identical(other.nights2, nights2) || other.nights2 == nights2) &&
            (identical(other.currency_id, currency_id) || other.currency_id == currency_id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.rejected, rejected) || other.rejected == rejected) &&
            const DeepCollectionEquality().equals(other.rejected_by, rejected_by) &&
            const DeepCollectionEquality().equals(other.paidBy, paidBy) &&
            const DeepCollectionEquality().equals(other.rejected_reason, rejected_reason) &&
            (identical(other.deleted_at, deleted_at) || other.deleted_at == deleted_at) &&
            const DeepCollectionEquality().equals(other.deleted_by, deleted_by) &&
            (identical(other.status_name, status_name) || other.status_name == status_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        incurred,
        submitted,
        approved,
        paid,
        type_id,
        purpose,
        client,
        location,
        start_location,
        end_location,
        start_time,
        end_time,
        nights,
        const DeepCollectionEquality().hash(rates_location),
        rates_local_currency_id,
        rates_local_currency_rate,
        rates_hours_5,
        rates_hours_10,
        rates_overnight,
        rates_overnight_additional_subsistence_value,
        const DeepCollectionEquality()
            .hash(rates_overnight_additional_subsistence_currency_id),
        rates_overnight_additional_subsistence_currency_rate,
        const DeepCollectionEquality()
            .hash(rates_overnight_additional_accommodation),
        const DeepCollectionEquality()
            .hash(rates_overnight_additional_accommodation_description),
        const DeepCollectionEquality()
            .hash(rates_overnight_additional_accommodation_value),
        const DeepCollectionEquality().hash(accomodation_required_____),
        const DeepCollectionEquality().hash(accomodation_nights_____),
        use_car,
        const DeepCollectionEquality().hash(motor_distance),
        const DeepCollectionEquality().hash(car_make_model),
        const DeepCollectionEquality().hash(motor_start_location),
        const DeepCollectionEquality().hash(motor_end_location),
        engine_size_id,
        const DeepCollectionEquality().hash(mileage_value),
        status_id,
        expense_id,
        const DeepCollectionEquality().hash(overnight_per_night_base),
        const DeepCollectionEquality()
            .hash(overnight_per_night_additional_subsistence),
        const DeepCollectionEquality()
            .hash(overnight_per_night_additional_accommodation),
        const DeepCollectionEquality().hash(overnight_per_night_total),
        const DeepCollectionEquality().hash(overnight),
        subsistence,
        total,
        user_id,
        added_time,
        nights1,
        nights2,
        currency_id,
        const DeepCollectionEquality().hash(status),
        rejected,
        const DeepCollectionEquality().hash(rejected_by),
        const DeepCollectionEquality().hash(paidBy),
        const DeepCollectionEquality().hash(rejected_reason),
        deleted_at,
        const DeepCollectionEquality().hash(deleted_by),
        status_name
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelRecordImplCopyWith<_$TravelRecordImpl> get copyWith =>
      __$$TravelRecordImplCopyWithImpl<_$TravelRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelRecordImplToJson(
      this,
    );
  }
}

abstract class _TravelRecord implements TravelRecord {
  const factory _TravelRecord(
      {final int? id,
      final DateTime? incurred,
      final DateTime? submitted,
      final DateTime? approved,
      final DateTime? paid,
      final int? type_id,
      final String? purpose,
      final String? client,
      final String? location,
      final String? start_location,
      final String? end_location,
      final DateTime? start_time,
      final DateTime? end_time,
      final num? nights,
      final dynamic rates_location,
      final int? rates_local_currency_id,
      final num? rates_local_currency_rate,
      final num? rates_hours_5,
      final num? rates_hours_10,
      final num? rates_overnight,
      final num? rates_overnight_additional_subsistence_value,
      final dynamic rates_overnight_additional_subsistence_currency_id,
      final num? rates_overnight_additional_subsistence_currency_rate,
      final dynamic rates_overnight_additional_accommodation,
      final dynamic rates_overnight_additional_accommodation_description,
      final dynamic rates_overnight_additional_accommodation_value,
      final dynamic accomodation_required_____,
      final dynamic accomodation_nights_____,
      final num? use_car,
      final dynamic motor_distance,
      final dynamic car_make_model,
      final dynamic motor_start_location,
      final dynamic motor_end_location,
      final int? engine_size_id,
      final dynamic mileage_value,
      final int? status_id,
      final int? expense_id,
      final dynamic overnight_per_night_base,
      final dynamic overnight_per_night_additional_subsistence,
      final dynamic overnight_per_night_additional_accommodation,
      final dynamic overnight_per_night_total,
      final dynamic overnight,
      final num? subsistence,
      final num? total,
      final int? user_id,
      final DateTime? added_time,
      final num? nights1,
      final num? nights2,
      final int? currency_id,
      final dynamic status,
      final DateTime? rejected,
      final dynamic rejected_by,
      final dynamic paidBy,
      final dynamic rejected_reason,
      final DateTime? deleted_at,
      final dynamic deleted_by,
      final String? status_name}) = _$TravelRecordImpl;

  factory _TravelRecord.fromJson(Map<String, dynamic> json) =
      _$TravelRecordImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get incurred;
  @override
  DateTime? get submitted;
  @override
  DateTime? get approved;
  @override
  DateTime? get paid;
  @override
  int? get type_id;
  @override
  String? get purpose;
  @override
  String? get client;
  @override
  String? get location;
  @override
  String? get start_location;
  @override
  String? get end_location;
  @override
  DateTime? get start_time;
  @override
  DateTime? get end_time;
  @override
  num? get nights;
  @override
  dynamic get rates_location;
  @override
  int? get rates_local_currency_id;
  @override
  num? get rates_local_currency_rate;
  @override
  num? get rates_hours_5;
  @override
  num? get rates_hours_10;
  @override
  num? get rates_overnight;
  @override
  num? get rates_overnight_additional_subsistence_value;
  @override
  dynamic get rates_overnight_additional_subsistence_currency_id;
  @override
  num? get rates_overnight_additional_subsistence_currency_rate;
  @override
  dynamic get rates_overnight_additional_accommodation;
  @override
  dynamic get rates_overnight_additional_accommodation_description;
  @override
  dynamic get rates_overnight_additional_accommodation_value;
  @override
  dynamic get accomodation_required_____;
  @override
  dynamic get accomodation_nights_____;
  @override
  num? get use_car;
  @override
  dynamic get motor_distance;
  @override
  dynamic get car_make_model;
  @override
  dynamic get motor_start_location;
  @override
  dynamic get motor_end_location;
  @override
  int? get engine_size_id;
  @override
  dynamic get mileage_value;
  @override
  int? get status_id;
  @override
  int? get expense_id;
  @override
  dynamic get overnight_per_night_base;
  @override
  dynamic get overnight_per_night_additional_subsistence;
  @override
  dynamic get overnight_per_night_additional_accommodation;
  @override
  dynamic get overnight_per_night_total;
  @override
  dynamic get overnight;
  @override
  num? get subsistence;
  @override
  num? get total;
  @override
  int? get user_id;
  @override
  DateTime? get added_time;
  @override
  num? get nights1;
  @override
  num? get nights2;
  @override
  int? get currency_id;
  @override
  dynamic get status;
  @override
  DateTime? get rejected;
  @override
  dynamic get rejected_by;
  @override
  dynamic get paidBy;
  @override
  dynamic get rejected_reason;
  @override
  DateTime? get deleted_at;
  @override
  dynamic get deleted_by;
  @override
  String? get status_name;
  @override
  @JsonKey(ignore: true)
  _$$TravelRecordImplCopyWith<_$TravelRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
