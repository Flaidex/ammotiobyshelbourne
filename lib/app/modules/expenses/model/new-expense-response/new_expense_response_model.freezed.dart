// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_expense_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewExpenseResponseModel _$NewExpenseResponseModelFromJson(
    Map<String, dynamic> json) {
  return _NewExpenseResponseModel.fromJson(json);
}

/// @nodoc
mixin _$NewExpenseResponseModel {
  String? get month => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewExpenseResponseModelCopyWith<NewExpenseResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewExpenseResponseModelCopyWith<$Res> {
  factory $NewExpenseResponseModelCopyWith(NewExpenseResponseModel value,
          $Res Function(NewExpenseResponseModel) then) =
      _$NewExpenseResponseModelCopyWithImpl<$Res, NewExpenseResponseModel>;
  @useResult
  $Res call({String? month, String? year});
}

/// @nodoc
class _$NewExpenseResponseModelCopyWithImpl<$Res,
        $Val extends NewExpenseResponseModel>
    implements $NewExpenseResponseModelCopyWith<$Res> {
  _$NewExpenseResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewExpenseResponseModelImplCopyWith<$Res>
    implements $NewExpenseResponseModelCopyWith<$Res> {
  factory _$$NewExpenseResponseModelImplCopyWith(
          _$NewExpenseResponseModelImpl value,
          $Res Function(_$NewExpenseResponseModelImpl) then) =
      __$$NewExpenseResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? month, String? year});
}

/// @nodoc
class __$$NewExpenseResponseModelImplCopyWithImpl<$Res>
    extends _$NewExpenseResponseModelCopyWithImpl<$Res,
        _$NewExpenseResponseModelImpl>
    implements _$$NewExpenseResponseModelImplCopyWith<$Res> {
  __$$NewExpenseResponseModelImplCopyWithImpl(
      _$NewExpenseResponseModelImpl _value,
      $Res Function(_$NewExpenseResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(_$NewExpenseResponseModelImpl(
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewExpenseResponseModelImpl implements _NewExpenseResponseModel {
  const _$NewExpenseResponseModelImpl({this.month, this.year});

  factory _$NewExpenseResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewExpenseResponseModelImplFromJson(json);

  @override
  final String? month;
  @override
  final String? year;

  @override
  String toString() {
    return 'NewExpenseResponseModel(month: $month, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewExpenseResponseModelImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, month, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewExpenseResponseModelImplCopyWith<_$NewExpenseResponseModelImpl>
      get copyWith => __$$NewExpenseResponseModelImplCopyWithImpl<
          _$NewExpenseResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewExpenseResponseModelImplToJson(
      this,
    );
  }
}

abstract class _NewExpenseResponseModel implements NewExpenseResponseModel {
  const factory _NewExpenseResponseModel(
      {final String? month,
      final String? year}) = _$NewExpenseResponseModelImpl;

  factory _NewExpenseResponseModel.fromJson(Map<String, dynamic> json) =
      _$NewExpenseResponseModelImpl.fromJson;

  @override
  String? get month;
  @override
  String? get year;
  @override
  @JsonKey(ignore: true)
  _$$NewExpenseResponseModelImplCopyWith<_$NewExpenseResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
