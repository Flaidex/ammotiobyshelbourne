// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'month_item_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonthItemListModel _$MonthItemListModelFromJson(Map<String, dynamic> json) {
  return _MonthItemListModel.fromJson(json);
}

/// @nodoc
mixin _$MonthItemListModel {
  List<MonthItemModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthItemListModelCopyWith<MonthItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthItemListModelCopyWith<$Res> {
  factory $MonthItemListModelCopyWith(
          MonthItemListModel value, $Res Function(MonthItemListModel) then) =
      _$MonthItemListModelCopyWithImpl<$Res, MonthItemListModel>;
  @useResult
  $Res call({List<MonthItemModel>? items});
}

/// @nodoc
class _$MonthItemListModelCopyWithImpl<$Res, $Val extends MonthItemListModel>
    implements $MonthItemListModelCopyWith<$Res> {
  _$MonthItemListModelCopyWithImpl(this._value, this._then);

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
              as List<MonthItemModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthItemListModelImplCopyWith<$Res>
    implements $MonthItemListModelCopyWith<$Res> {
  factory _$$MonthItemListModelImplCopyWith(_$MonthItemListModelImpl value,
          $Res Function(_$MonthItemListModelImpl) then) =
      __$$MonthItemListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MonthItemModel>? items});
}

/// @nodoc
class __$$MonthItemListModelImplCopyWithImpl<$Res>
    extends _$MonthItemListModelCopyWithImpl<$Res, _$MonthItemListModelImpl>
    implements _$$MonthItemListModelImplCopyWith<$Res> {
  __$$MonthItemListModelImplCopyWithImpl(_$MonthItemListModelImpl _value,
      $Res Function(_$MonthItemListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$MonthItemListModelImpl(
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MonthItemModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthItemListModelImpl implements _MonthItemListModel {
  const _$MonthItemListModelImpl(final List<MonthItemModel>? items)
      : _items = items;

  factory _$MonthItemListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthItemListModelImplFromJson(json);

  final List<MonthItemModel>? _items;
  @override
  List<MonthItemModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MonthItemListModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthItemListModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthItemListModelImplCopyWith<_$MonthItemListModelImpl> get copyWith =>
      __$$MonthItemListModelImplCopyWithImpl<_$MonthItemListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthItemListModelImplToJson(
      this,
    );
  }
}

abstract class _MonthItemListModel implements MonthItemListModel {
  const factory _MonthItemListModel(final List<MonthItemModel>? items) =
      _$MonthItemListModelImpl;

  factory _MonthItemListModel.fromJson(Map<String, dynamic> json) =
      _$MonthItemListModelImpl.fromJson;

  @override
  List<MonthItemModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$MonthItemListModelImplCopyWith<_$MonthItemListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MonthItemModel _$MonthItemModelFromJson(Map<String, dynamic> json) {
  return _MonthItemModel.fromJson(json);
}

/// @nodoc
mixin _$MonthItemModel {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get incurred => throw _privateConstructorUsedError;
  DateTime? get submitted => throw _privateConstructorUsedError;
  DateTime? get approved => throw _privateConstructorUsedError;
  DateTime? get paid => throw _privateConstructorUsedError;
  int? get status_id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthItemModelCopyWith<MonthItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthItemModelCopyWith<$Res> {
  factory $MonthItemModelCopyWith(
          MonthItemModel value, $Res Function(MonthItemModel) then) =
      _$MonthItemModelCopyWithImpl<$Res, MonthItemModel>;
  @useResult
  $Res call(
      {int? id,
      DateTime? incurred,
      DateTime? submitted,
      DateTime? approved,
      DateTime? paid,
      int? status_id,
      String? description,
      num? total,
      String? status,
      String? type});
}

/// @nodoc
class _$MonthItemModelCopyWithImpl<$Res, $Val extends MonthItemModel>
    implements $MonthItemModelCopyWith<$Res> {
  _$MonthItemModelCopyWithImpl(this._value, this._then);

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
    Object? status_id = freezed,
    Object? description = freezed,
    Object? total = freezed,
    Object? status = freezed,
    Object? type = freezed,
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
      status_id: freezed == status_id
          ? _value.status_id
          : status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthItemModelImplCopyWith<$Res>
    implements $MonthItemModelCopyWith<$Res> {
  factory _$$MonthItemModelImplCopyWith(_$MonthItemModelImpl value,
          $Res Function(_$MonthItemModelImpl) then) =
      __$$MonthItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? incurred,
      DateTime? submitted,
      DateTime? approved,
      DateTime? paid,
      int? status_id,
      String? description,
      num? total,
      String? status,
      String? type});
}

/// @nodoc
class __$$MonthItemModelImplCopyWithImpl<$Res>
    extends _$MonthItemModelCopyWithImpl<$Res, _$MonthItemModelImpl>
    implements _$$MonthItemModelImplCopyWith<$Res> {
  __$$MonthItemModelImplCopyWithImpl(
      _$MonthItemModelImpl _value, $Res Function(_$MonthItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? incurred = freezed,
    Object? submitted = freezed,
    Object? approved = freezed,
    Object? paid = freezed,
    Object? status_id = freezed,
    Object? description = freezed,
    Object? total = freezed,
    Object? status = freezed,
    Object? type = freezed,
  }) {
    return _then(_$MonthItemModelImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == incurred
          ? _value.incurred
          : incurred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == status_id
          ? _value.status_id
          : status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthItemModelImpl implements _MonthItemModel {
  const _$MonthItemModelImpl(
      this.id,
      this.incurred,
      this.submitted,
      this.approved,
      this.paid,
      this.status_id,
      this.description,
      this.total,
      this.status,
      this.type);

  factory _$MonthItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthItemModelImplFromJson(json);

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
  final int? status_id;
  @override
  final String? description;
  @override
  final num? total;
  @override
  final String? status;
  @override
  final String? type;

  @override
  String toString() {
    return 'MonthItemModel(id: $id, incurred: $incurred, submitted: $submitted, approved: $approved, paid: $paid, status_id: $status_id, description: $description, total: $total, status: $status, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.incurred, incurred) ||
                other.incurred == incurred) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.status_id, status_id) ||
                other.status_id == status_id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, incurred, submitted,
      approved, paid, status_id, description, total, status, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthItemModelImplCopyWith<_$MonthItemModelImpl> get copyWith =>
      __$$MonthItemModelImplCopyWithImpl<_$MonthItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthItemModelImplToJson(
      this,
    );
  }
}

abstract class _MonthItemModel implements MonthItemModel {
  const factory _MonthItemModel(
      final int? id,
      final DateTime? incurred,
      final DateTime? submitted,
      final DateTime? approved,
      final DateTime? paid,
      final int? status_id,
      final String? description,
      final num? total,
      final String? status,
      final String? type) = _$MonthItemModelImpl;

  factory _MonthItemModel.fromJson(Map<String, dynamic> json) =
      _$MonthItemModelImpl.fromJson;

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
  int? get status_id;
  @override
  String? get description;
  @override
  num? get total;
  @override
  String? get status;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$MonthItemModelImplCopyWith<_$MonthItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
