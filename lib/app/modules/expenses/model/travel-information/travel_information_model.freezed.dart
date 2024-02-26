// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelInformationModel _$TravelInformationModelFromJson(
    Map<String, dynamic> json) {
  return _TravelInformationModel.fromJson(json);
}

/// @nodoc
mixin _$TravelInformationModel {
  int? get test => throw _privateConstructorUsedError;
  String? get localRate => throw _privateConstructorUsedError;
  dynamic get record => throw _privateConstructorUsedError;
  List<Location>? get locations => throw _privateConstructorUsedError;
  List<EngineSize>? get engineSizes => throw _privateConstructorUsedError;
  int? get mileageToDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelInformationModelCopyWith<TravelInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelInformationModelCopyWith<$Res> {
  factory $TravelInformationModelCopyWith(TravelInformationModel value,
          $Res Function(TravelInformationModel) then) =
      _$TravelInformationModelCopyWithImpl<$Res, TravelInformationModel>;
  @useResult
  $Res call(
      {int? test,
      String? localRate,
      dynamic record,
      List<Location>? locations,
      List<EngineSize>? engineSizes,
      int? mileageToDate});
}

/// @nodoc
class _$TravelInformationModelCopyWithImpl<$Res,
        $Val extends TravelInformationModel>
    implements $TravelInformationModelCopyWith<$Res> {
  _$TravelInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = freezed,
    Object? localRate = freezed,
    Object? record = freezed,
    Object? locations = freezed,
    Object? engineSizes = freezed,
    Object? mileageToDate = freezed,
  }) {
    return _then(_value.copyWith(
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      localRate: freezed == localRate
          ? _value.localRate
          : localRate // ignore: cast_nullable_to_non_nullable
              as String?,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
      engineSizes: freezed == engineSizes
          ? _value.engineSizes
          : engineSizes // ignore: cast_nullable_to_non_nullable
              as List<EngineSize>?,
      mileageToDate: freezed == mileageToDate
          ? _value.mileageToDate
          : mileageToDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelInformationModelImplCopyWith<$Res>
    implements $TravelInformationModelCopyWith<$Res> {
  factory _$$TravelInformationModelImplCopyWith(
          _$TravelInformationModelImpl value,
          $Res Function(_$TravelInformationModelImpl) then) =
      __$$TravelInformationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? test,
      String? localRate,
      dynamic record,
      List<Location>? locations,
      List<EngineSize>? engineSizes,
      int? mileageToDate});
}

/// @nodoc
class __$$TravelInformationModelImplCopyWithImpl<$Res>
    extends _$TravelInformationModelCopyWithImpl<$Res,
        _$TravelInformationModelImpl>
    implements _$$TravelInformationModelImplCopyWith<$Res> {
  __$$TravelInformationModelImplCopyWithImpl(
      _$TravelInformationModelImpl _value,
      $Res Function(_$TravelInformationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = freezed,
    Object? localRate = freezed,
    Object? record = freezed,
    Object? locations = freezed,
    Object? engineSizes = freezed,
    Object? mileageToDate = freezed,
  }) {
    return _then(_$TravelInformationModelImpl(
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      localRate: freezed == localRate
          ? _value.localRate
          : localRate // ignore: cast_nullable_to_non_nullable
              as String?,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
      engineSizes: freezed == engineSizes
          ? _value._engineSizes
          : engineSizes // ignore: cast_nullable_to_non_nullable
              as List<EngineSize>?,
      mileageToDate: freezed == mileageToDate
          ? _value.mileageToDate
          : mileageToDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelInformationModelImpl implements _TravelInformationModel {
  const _$TravelInformationModelImpl(
      {this.test,
      this.localRate,
      this.record,
      final List<Location>? locations,
      final List<EngineSize>? engineSizes,
      this.mileageToDate})
      : _locations = locations,
        _engineSizes = engineSizes;

  factory _$TravelInformationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelInformationModelImplFromJson(json);

  @override
  final int? test;
  @override
  final String? localRate;
  @override
  final dynamic record;
  final List<Location>? _locations;
  @override
  List<Location>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EngineSize>? _engineSizes;
  @override
  List<EngineSize>? get engineSizes {
    final value = _engineSizes;
    if (value == null) return null;
    if (_engineSizes is EqualUnmodifiableListView) return _engineSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? mileageToDate;

  @override
  String toString() {
    return 'TravelInformationModel(test: $test, localRate: $localRate, record: $record, locations: $locations, engineSizes: $engineSizes, mileageToDate: $mileageToDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelInformationModelImpl &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.localRate, localRate) ||
                other.localRate == localRate) &&
            const DeepCollectionEquality().equals(other.record, record) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality()
                .equals(other._engineSizes, _engineSizes) &&
            (identical(other.mileageToDate, mileageToDate) ||
                other.mileageToDate == mileageToDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      test,
      localRate,
      const DeepCollectionEquality().hash(record),
      const DeepCollectionEquality().hash(_locations),
      const DeepCollectionEquality().hash(_engineSizes),
      mileageToDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelInformationModelImplCopyWith<_$TravelInformationModelImpl>
      get copyWith => __$$TravelInformationModelImplCopyWithImpl<
          _$TravelInformationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelInformationModelImplToJson(
      this,
    );
  }
}

abstract class _TravelInformationModel implements TravelInformationModel {
  const factory _TravelInformationModel(
      {final int? test,
      final String? localRate,
      final dynamic record,
      final List<Location>? locations,
      final List<EngineSize>? engineSizes,
      final int? mileageToDate}) = _$TravelInformationModelImpl;

  factory _TravelInformationModel.fromJson(Map<String, dynamic> json) =
      _$TravelInformationModelImpl.fromJson;

  @override
  int? get test;
  @override
  String? get localRate;
  @override
  dynamic get record;
  @override
  List<Location>? get locations;
  @override
  List<EngineSize>? get engineSizes;
  @override
  int? get mileageToDate;
  @override
  @JsonKey(ignore: true)
  _$$TravelInformationModelImplCopyWith<_$TravelInformationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EngineSize _$EngineSizeFromJson(Map<String, dynamic> json) {
  return _EngineSize.fromJson(json);
}

/// @nodoc
mixin _$EngineSize {
  int? get id => throw _privateConstructorUsedError;
  num? get sort => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  num? get band1Rate => throw _privateConstructorUsedError;
  num? get band1Limit => throw _privateConstructorUsedError;
  num? get band2Rate => throw _privateConstructorUsedError;
  num? get band2Limit => throw _privateConstructorUsedError;
  num? get band3Rate => throw _privateConstructorUsedError;
  num? get band3Limit => throw _privateConstructorUsedError;
  num? get band4Rate => throw _privateConstructorUsedError;
  num? get band4Limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngineSizeCopyWith<EngineSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineSizeCopyWith<$Res> {
  factory $EngineSizeCopyWith(
          EngineSize value, $Res Function(EngineSize) then) =
      _$EngineSizeCopyWithImpl<$Res, EngineSize>;
  @useResult
  $Res call(
      {int? id,
      num? sort,
      String? name,
      num? band1Rate,
      num? band1Limit,
      num? band2Rate,
      num? band2Limit,
      num? band3Rate,
      num? band3Limit,
      num? band4Rate,
      num? band4Limit});
}

/// @nodoc
class _$EngineSizeCopyWithImpl<$Res, $Val extends EngineSize>
    implements $EngineSizeCopyWith<$Res> {
  _$EngineSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sort = freezed,
    Object? name = freezed,
    Object? band1Rate = freezed,
    Object? band1Limit = freezed,
    Object? band2Rate = freezed,
    Object? band2Limit = freezed,
    Object? band3Rate = freezed,
    Object? band3Limit = freezed,
    Object? band4Rate = freezed,
    Object? band4Limit = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      band1Rate: freezed == band1Rate
          ? _value.band1Rate
          : band1Rate // ignore: cast_nullable_to_non_nullable
              as num?,
      band1Limit: freezed == band1Limit
          ? _value.band1Limit
          : band1Limit // ignore: cast_nullable_to_non_nullable
              as num?,
      band2Rate: freezed == band2Rate
          ? _value.band2Rate
          : band2Rate // ignore: cast_nullable_to_non_nullable
              as num?,
      band2Limit: freezed == band2Limit
          ? _value.band2Limit
          : band2Limit // ignore: cast_nullable_to_non_nullable
              as num?,
      band3Rate: freezed == band3Rate
          ? _value.band3Rate
          : band3Rate // ignore: cast_nullable_to_non_nullable
              as num?,
      band3Limit: freezed == band3Limit
          ? _value.band3Limit
          : band3Limit // ignore: cast_nullable_to_non_nullable
              as num?,
      band4Rate: freezed == band4Rate
          ? _value.band4Rate
          : band4Rate // ignore: cast_nullable_to_non_nullable
              as num?,
      band4Limit: freezed == band4Limit
          ? _value.band4Limit
          : band4Limit // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EngineSizeImplCopyWith<$Res>
    implements $EngineSizeCopyWith<$Res> {
  factory _$$EngineSizeImplCopyWith(
          _$EngineSizeImpl value, $Res Function(_$EngineSizeImpl) then) =
      __$$EngineSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      num? sort,
      String? name,
      num? band1Rate,
      num? band1Limit,
      num? band2Rate,
      num? band2Limit,
      num? band3Rate,
      num? band3Limit,
      num? band4Rate,
      num? band4Limit});
}

/// @nodoc
class __$$EngineSizeImplCopyWithImpl<$Res>
    extends _$EngineSizeCopyWithImpl<$Res, _$EngineSizeImpl>
    implements _$$EngineSizeImplCopyWith<$Res> {
  __$$EngineSizeImplCopyWithImpl(
      _$EngineSizeImpl _value, $Res Function(_$EngineSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sort = freezed,
    Object? name = freezed,
    Object? band1Rate = freezed,
    Object? band1Limit = freezed,
    Object? band2Rate = freezed,
    Object? band2Limit = freezed,
    Object? band3Rate = freezed,
    Object? band3Limit = freezed,
    Object? band4Rate = freezed,
    Object? band4Limit = freezed,
  }) {
    return _then(_$EngineSizeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      band1Rate: freezed == band1Rate
          ? _value.band1Rate
          : band1Rate // ignore: cast_nullable_to_non_nullable
              as num?,
      band1Limit: freezed == band1Limit
          ? _value.band1Limit
          : band1Limit // ignore: cast_nullable_to_non_nullable
              as num?,
      band2Rate: freezed == band2Rate
          ? _value.band2Rate
          : band2Rate // ignore: cast_nullable_to_non_nullable
              as num?,
      band2Limit: freezed == band2Limit
          ? _value.band2Limit
          : band2Limit // ignore: cast_nullable_to_non_nullable
              as num?,
      band3Rate: freezed == band3Rate
          ? _value.band3Rate
          : band3Rate // ignore: cast_nullable_to_non_nullable
              as num?,
      band3Limit: freezed == band3Limit
          ? _value.band3Limit
          : band3Limit // ignore: cast_nullable_to_non_nullable
              as num?,
      band4Rate: freezed == band4Rate
          ? _value.band4Rate
          : band4Rate // ignore: cast_nullable_to_non_nullable
              as num?,
      band4Limit: freezed == band4Limit
          ? _value.band4Limit
          : band4Limit // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EngineSizeImpl implements _EngineSize {
  const _$EngineSizeImpl(
      {this.id,
      this.sort,
      this.name,
      this.band1Rate,
      this.band1Limit,
      this.band2Rate,
      this.band2Limit,
      this.band3Rate,
      this.band3Limit,
      this.band4Rate,
      this.band4Limit});

  factory _$EngineSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EngineSizeImplFromJson(json);

  @override
  final int? id;
  @override
  final num? sort;
  @override
  final String? name;
  @override
  final num? band1Rate;
  @override
  final num? band1Limit;
  @override
  final num? band2Rate;
  @override
  final num? band2Limit;
  @override
  final num? band3Rate;
  @override
  final num? band3Limit;
  @override
  final num? band4Rate;
  @override
  final num? band4Limit;

  @override
  String toString() {
    return 'EngineSize(id: $id, sort: $sort, name: $name, band1Rate: $band1Rate, band1Limit: $band1Limit, band2Rate: $band2Rate, band2Limit: $band2Limit, band3Rate: $band3Rate, band3Limit: $band3Limit, band4Rate: $band4Rate, band4Limit: $band4Limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngineSizeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.band1Rate, band1Rate) ||
                other.band1Rate == band1Rate) &&
            (identical(other.band1Limit, band1Limit) ||
                other.band1Limit == band1Limit) &&
            (identical(other.band2Rate, band2Rate) ||
                other.band2Rate == band2Rate) &&
            (identical(other.band2Limit, band2Limit) ||
                other.band2Limit == band2Limit) &&
            (identical(other.band3Rate, band3Rate) ||
                other.band3Rate == band3Rate) &&
            (identical(other.band3Limit, band3Limit) ||
                other.band3Limit == band3Limit) &&
            (identical(other.band4Rate, band4Rate) ||
                other.band4Rate == band4Rate) &&
            (identical(other.band4Limit, band4Limit) ||
                other.band4Limit == band4Limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sort,
      name,
      band1Rate,
      band1Limit,
      band2Rate,
      band2Limit,
      band3Rate,
      band3Limit,
      band4Rate,
      band4Limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EngineSizeImplCopyWith<_$EngineSizeImpl> get copyWith =>
      __$$EngineSizeImplCopyWithImpl<_$EngineSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EngineSizeImplToJson(
      this,
    );
  }
}

abstract class _EngineSize implements EngineSize {
  const factory _EngineSize(
      {final int? id,
      final num? sort,
      final String? name,
      final num? band1Rate,
      final num? band1Limit,
      final num? band2Rate,
      final num? band2Limit,
      final num? band3Rate,
      final num? band3Limit,
      final num? band4Rate,
      final num? band4Limit}) = _$EngineSizeImpl;

  factory _EngineSize.fromJson(Map<String, dynamic> json) =
      _$EngineSizeImpl.fromJson;

  @override
  int? get id;
  @override
  num? get sort;
  @override
  String? get name;
  @override
  num? get band1Rate;
  @override
  num? get band1Limit;
  @override
  num? get band2Rate;
  @override
  num? get band2Limit;
  @override
  num? get band3Rate;
  @override
  num? get band3Limit;
  @override
  num? get band4Rate;
  @override
  num? get band4Limit;
  @override
  @JsonKey(ignore: true)
  _$$EngineSizeImplCopyWith<_$EngineSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  int? get id => throw _privateConstructorUsedError;
  int? get country_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get currency_code => throw _privateConstructorUsedError;
  int? get local_currency_id => throw _privateConstructorUsedError;
  num? get overnight => throw _privateConstructorUsedError;
  num? get hours_10 => throw _privateConstructorUsedError;
  num? get hours_5 => throw _privateConstructorUsedError;
  int? get currency_2_id => throw _privateConstructorUsedError;
  num? get overnight_2 => throw _privateConstructorUsedError;
  num? get additional_accommodation => throw _privateConstructorUsedError;
  String? get additional_accommodation_description =>
      throw _privateConstructorUsedError;
  int? get admin_group_id => throw _privateConstructorUsedError;
  int? get payroll_currency_id => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  num? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {int? id,
      int? country_id,
      String? name,
      String? currency_code,
      int? local_currency_id,
      num? overnight,
      num? hours_10,
      num? hours_5,
      int? currency_2_id,
      num? overnight_2,
      num? additional_accommodation,
      String? additional_accommodation_description,
      int? admin_group_id,
      int? payroll_currency_id,
      String? country,
      num? rate});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? country_id = freezed,
    Object? name = freezed,
    Object? currency_code = freezed,
    Object? local_currency_id = freezed,
    Object? overnight = freezed,
    Object? hours_10 = freezed,
    Object? hours_5 = freezed,
    Object? currency_2_id = freezed,
    Object? overnight_2 = freezed,
    Object? additional_accommodation = freezed,
    Object? additional_accommodation_description = freezed,
    Object? admin_group_id = freezed,
    Object? payroll_currency_id = freezed,
    Object? country = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country_id: freezed == country_id
          ? _value.country_id
          : country_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      currency_code: freezed == currency_code
          ? _value.currency_code
          : currency_code // ignore: cast_nullable_to_non_nullable
              as String?,
      local_currency_id: freezed == local_currency_id
          ? _value.local_currency_id
          : local_currency_id // ignore: cast_nullable_to_non_nullable
              as int?,
      overnight: freezed == overnight
          ? _value.overnight
          : overnight // ignore: cast_nullable_to_non_nullable
              as num?,
      hours_10: freezed == hours_10
          ? _value.hours_10
          : hours_10 // ignore: cast_nullable_to_non_nullable
              as num?,
      hours_5: freezed == hours_5
          ? _value.hours_5
          : hours_5 // ignore: cast_nullable_to_non_nullable
              as num?,
      currency_2_id: freezed == currency_2_id
          ? _value.currency_2_id
          : currency_2_id // ignore: cast_nullable_to_non_nullable
              as int?,
      overnight_2: freezed == overnight_2
          ? _value.overnight_2
          : overnight_2 // ignore: cast_nullable_to_non_nullable
              as num?,
      additional_accommodation: freezed == additional_accommodation
          ? _value.additional_accommodation
          : additional_accommodation // ignore: cast_nullable_to_non_nullable
              as num?,
      additional_accommodation_description: freezed ==
              additional_accommodation_description
          ? _value.additional_accommodation_description
          : additional_accommodation_description // ignore: cast_nullable_to_non_nullable
              as String?,
      admin_group_id: freezed == admin_group_id
          ? _value.admin_group_id
          : admin_group_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payroll_currency_id: freezed == payroll_currency_id
          ? _value.payroll_currency_id
          : payroll_currency_id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? country_id,
      String? name,
      String? currency_code,
      int? local_currency_id,
      num? overnight,
      num? hours_10,
      num? hours_5,
      int? currency_2_id,
      num? overnight_2,
      num? additional_accommodation,
      String? additional_accommodation_description,
      int? admin_group_id,
      int? payroll_currency_id,
      String? country,
      num? rate});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? country_id = freezed,
    Object? name = freezed,
    Object? currency_code = freezed,
    Object? local_currency_id = freezed,
    Object? overnight = freezed,
    Object? hours_10 = freezed,
    Object? hours_5 = freezed,
    Object? currency_2_id = freezed,
    Object? overnight_2 = freezed,
    Object? additional_accommodation = freezed,
    Object? additional_accommodation_description = freezed,
    Object? admin_group_id = freezed,
    Object? payroll_currency_id = freezed,
    Object? country = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$LocationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country_id: freezed == country_id
          ? _value.country_id
          : country_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      currency_code: freezed == currency_code
          ? _value.currency_code
          : currency_code // ignore: cast_nullable_to_non_nullable
              as String?,
      local_currency_id: freezed == local_currency_id
          ? _value.local_currency_id
          : local_currency_id // ignore: cast_nullable_to_non_nullable
              as int?,
      overnight: freezed == overnight
          ? _value.overnight
          : overnight // ignore: cast_nullable_to_non_nullable
              as num?,
      hours_10: freezed == hours_10
          ? _value.hours_10
          : hours_10 // ignore: cast_nullable_to_non_nullable
              as num?,
      hours_5: freezed == hours_5
          ? _value.hours_5
          : hours_5 // ignore: cast_nullable_to_non_nullable
              as num?,
      currency_2_id: freezed == currency_2_id
          ? _value.currency_2_id
          : currency_2_id // ignore: cast_nullable_to_non_nullable
              as int?,
      overnight_2: freezed == overnight_2
          ? _value.overnight_2
          : overnight_2 // ignore: cast_nullable_to_non_nullable
              as num?,
      additional_accommodation: freezed == additional_accommodation
          ? _value.additional_accommodation
          : additional_accommodation // ignore: cast_nullable_to_non_nullable
              as num?,
      additional_accommodation_description: freezed ==
              additional_accommodation_description
          ? _value.additional_accommodation_description
          : additional_accommodation_description // ignore: cast_nullable_to_non_nullable
              as String?,
      admin_group_id: freezed == admin_group_id
          ? _value.admin_group_id
          : admin_group_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payroll_currency_id: freezed == payroll_currency_id
          ? _value.payroll_currency_id
          : payroll_currency_id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {this.id,
      this.country_id,
      this.name,
      this.currency_code,
      this.local_currency_id,
      this.overnight,
      this.hours_10,
      this.hours_5,
      this.currency_2_id,
      this.overnight_2,
      this.additional_accommodation,
      this.additional_accommodation_description,
      this.admin_group_id,
      this.payroll_currency_id,
      this.country,
      this.rate});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final int? id;
  @override
  final int? country_id;
  @override
  final String? name;
  @override
  final String? currency_code;
  @override
  final int? local_currency_id;
  @override
  final num? overnight;
  @override
  final num? hours_10;
  @override
  final num? hours_5;
  @override
  final int? currency_2_id;
  @override
  final num? overnight_2;
  @override
  final num? additional_accommodation;
  @override
  final String? additional_accommodation_description;
  @override
  final int? admin_group_id;
  @override
  final int? payroll_currency_id;
  @override
  final String? country;
  @override
  final num? rate;

  @override
  String toString() {
    return 'Location(id: $id, country_id: $country_id, name: $name, currency_code: $currency_code, local_currency_id: $local_currency_id, overnight: $overnight, hours_10: $hours_10, hours_5: $hours_5, currency_2_id: $currency_2_id, overnight_2: $overnight_2, additional_accommodation: $additional_accommodation, additional_accommodation_description: $additional_accommodation_description, admin_group_id: $admin_group_id, payroll_currency_id: $payroll_currency_id, country: $country, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country_id, country_id) ||
                other.country_id == country_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currency_code, currency_code) ||
                other.currency_code == currency_code) &&
            (identical(other.local_currency_id, local_currency_id) ||
                other.local_currency_id == local_currency_id) &&
            (identical(other.overnight, overnight) ||
                other.overnight == overnight) &&
            (identical(other.hours_10, hours_10) ||
                other.hours_10 == hours_10) &&
            (identical(other.hours_5, hours_5) || other.hours_5 == hours_5) &&
            (identical(other.currency_2_id, currency_2_id) ||
                other.currency_2_id == currency_2_id) &&
            (identical(other.overnight_2, overnight_2) ||
                other.overnight_2 == overnight_2) &&
            (identical(
                    other.additional_accommodation, additional_accommodation) ||
                other.additional_accommodation == additional_accommodation) &&
            (identical(other.additional_accommodation_description,
                    additional_accommodation_description) ||
                other.additional_accommodation_description ==
                    additional_accommodation_description) &&
            (identical(other.admin_group_id, admin_group_id) ||
                other.admin_group_id == admin_group_id) &&
            (identical(other.payroll_currency_id, payroll_currency_id) ||
                other.payroll_currency_id == payroll_currency_id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      country_id,
      name,
      currency_code,
      local_currency_id,
      overnight,
      hours_10,
      hours_5,
      currency_2_id,
      overnight_2,
      additional_accommodation,
      additional_accommodation_description,
      admin_group_id,
      payroll_currency_id,
      country,
      rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final int? id,
      final int? country_id,
      final String? name,
      final String? currency_code,
      final int? local_currency_id,
      final num? overnight,
      final num? hours_10,
      final num? hours_5,
      final int? currency_2_id,
      final num? overnight_2,
      final num? additional_accommodation,
      final String? additional_accommodation_description,
      final int? admin_group_id,
      final int? payroll_currency_id,
      final String? country,
      final num? rate}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  int? get id;
  @override
  int? get country_id;
  @override
  String? get name;
  @override
  String? get currency_code;
  @override
  int? get local_currency_id;
  @override
  num? get overnight;
  @override
  num? get hours_10;
  @override
  num? get hours_5;
  @override
  int? get currency_2_id;
  @override
  num? get overnight_2;
  @override
  num? get additional_accommodation;
  @override
  String? get additional_accommodation_description;
  @override
  int? get admin_group_id;
  @override
  int? get payroll_currency_id;
  @override
  String? get country;
  @override
  num? get rate;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
