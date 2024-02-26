// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusinessImageModel _$BusinessImageModelFromJson(Map<String, dynamic> json) {
  return _BusinessImageModel.fromJson(json);
}

/// @nodoc
mixin _$BusinessImageModel {
  int? get id => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessImageModelCopyWith<BusinessImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessImageModelCopyWith<$Res> {
  factory $BusinessImageModelCopyWith(
          BusinessImageModel value, $Res Function(BusinessImageModel) then) =
      _$BusinessImageModelCopyWithImpl<$Res, BusinessImageModel>;
  @useResult
  $Res call({int? id, String? originalName, String? name});
}

/// @nodoc
class _$BusinessImageModelCopyWithImpl<$Res, $Val extends BusinessImageModel>
    implements $BusinessImageModelCopyWith<$Res> {
  _$BusinessImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? originalName = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessImageModelImplCopyWith<$Res>
    implements $BusinessImageModelCopyWith<$Res> {
  factory _$$BusinessImageModelImplCopyWith(_$BusinessImageModelImpl value,
          $Res Function(_$BusinessImageModelImpl) then) =
      __$$BusinessImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? originalName, String? name});
}

/// @nodoc
class __$$BusinessImageModelImplCopyWithImpl<$Res>
    extends _$BusinessImageModelCopyWithImpl<$Res, _$BusinessImageModelImpl>
    implements _$$BusinessImageModelImplCopyWith<$Res> {
  __$$BusinessImageModelImplCopyWithImpl(_$BusinessImageModelImpl _value,
      $Res Function(_$BusinessImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? originalName = freezed,
    Object? name = freezed,
  }) {
    return _then(_$BusinessImageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessImageModelImpl implements _BusinessImageModel {
  const _$BusinessImageModelImpl({this.id, this.originalName, this.name});

  factory _$BusinessImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessImageModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? originalName;
  @override
  final String? name;

  @override
  String toString() {
    return 'BusinessImageModel(id: $id, originalName: $originalName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, originalName, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessImageModelImplCopyWith<_$BusinessImageModelImpl> get copyWith =>
      __$$BusinessImageModelImplCopyWithImpl<_$BusinessImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessImageModelImplToJson(
      this,
    );
  }
}

abstract class _BusinessImageModel implements BusinessImageModel {
  const factory _BusinessImageModel(
      {final int? id,
      final String? originalName,
      final String? name}) = _$BusinessImageModelImpl;

  factory _BusinessImageModel.fromJson(Map<String, dynamic> json) =
      _$BusinessImageModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get originalName;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$BusinessImageModelImplCopyWith<_$BusinessImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
