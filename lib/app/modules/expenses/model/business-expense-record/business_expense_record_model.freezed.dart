// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_expense_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusinessExpenseRecordModel _$BusinessExpenseRecordModelFromJson(
    Map<String, dynamic> json) {
  return _BusinessExpenseRecordModel.fromJson(json);
}

/// @nodoc
mixin _$BusinessExpenseRecordModel {
  Record? get record => throw _privateConstructorUsedError;
  List<FileElement>? get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessExpenseRecordModelCopyWith<BusinessExpenseRecordModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessExpenseRecordModelCopyWith<$Res> {
  factory $BusinessExpenseRecordModelCopyWith(BusinessExpenseRecordModel value,
          $Res Function(BusinessExpenseRecordModel) then) =
      _$BusinessExpenseRecordModelCopyWithImpl<$Res,
          BusinessExpenseRecordModel>;
  @useResult
  $Res call({Record? record, List<FileElement>? files});

  $RecordCopyWith<$Res>? get record;
}

/// @nodoc
class _$BusinessExpenseRecordModelCopyWithImpl<$Res,
        $Val extends BusinessExpenseRecordModel>
    implements $BusinessExpenseRecordModelCopyWith<$Res> {
  _$BusinessExpenseRecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = freezed,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as Record?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileElement>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecordCopyWith<$Res>? get record {
    if (_value.record == null) {
      return null;
    }

    return $RecordCopyWith<$Res>(_value.record!, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessExpenseRecordModelImplCopyWith<$Res>
    implements $BusinessExpenseRecordModelCopyWith<$Res> {
  factory _$$BusinessExpenseRecordModelImplCopyWith(
          _$BusinessExpenseRecordModelImpl value,
          $Res Function(_$BusinessExpenseRecordModelImpl) then) =
      __$$BusinessExpenseRecordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Record? record, List<FileElement>? files});

  @override
  $RecordCopyWith<$Res>? get record;
}

/// @nodoc
class __$$BusinessExpenseRecordModelImplCopyWithImpl<$Res>
    extends _$BusinessExpenseRecordModelCopyWithImpl<$Res,
        _$BusinessExpenseRecordModelImpl>
    implements _$$BusinessExpenseRecordModelImplCopyWith<$Res> {
  __$$BusinessExpenseRecordModelImplCopyWithImpl(
      _$BusinessExpenseRecordModelImpl _value,
      $Res Function(_$BusinessExpenseRecordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = freezed,
    Object? files = freezed,
  }) {
    return _then(_$BusinessExpenseRecordModelImpl(
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as Record?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessExpenseRecordModelImpl implements _BusinessExpenseRecordModel {
  const _$BusinessExpenseRecordModelImpl(
      {this.record, final List<FileElement>? files})
      : _files = files;

  factory _$BusinessExpenseRecordModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessExpenseRecordModelImplFromJson(json);

  @override
  final Record? record;
  final List<FileElement>? _files;
  @override
  List<FileElement>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BusinessExpenseRecordModel(record: $record, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessExpenseRecordModelImpl &&
            (identical(other.record, record) || other.record == record) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, record, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessExpenseRecordModelImplCopyWith<_$BusinessExpenseRecordModelImpl>
      get copyWith => __$$BusinessExpenseRecordModelImplCopyWithImpl<
          _$BusinessExpenseRecordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessExpenseRecordModelImplToJson(
      this,
    );
  }
}

abstract class _BusinessExpenseRecordModel
    implements BusinessExpenseRecordModel {
  const factory _BusinessExpenseRecordModel(
      {final Record? record,
      final List<FileElement>? files}) = _$BusinessExpenseRecordModelImpl;

  factory _BusinessExpenseRecordModel.fromJson(Map<String, dynamic> json) =
      _$BusinessExpenseRecordModelImpl.fromJson;

  @override
  Record? get record;
  @override
  List<FileElement>? get files;
  @override
  @JsonKey(ignore: true)
  _$$BusinessExpenseRecordModelImplCopyWith<_$BusinessExpenseRecordModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FileElement _$FileElementFromJson(Map<String, dynamic> json) {
  return _FileElement.fromJson(json);
}

/// @nodoc
mixin _$FileElement {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get internal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileElementCopyWith<FileElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileElementCopyWith<$Res> {
  factory $FileElementCopyWith(
          FileElement value, $Res Function(FileElement) then) =
      _$FileElementCopyWithImpl<$Res, FileElement>;
  @useResult
  $Res call({int? id, String? name, String? internal});
}

/// @nodoc
class _$FileElementCopyWithImpl<$Res, $Val extends FileElement>
    implements $FileElementCopyWith<$Res> {
  _$FileElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? internal = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      internal: freezed == internal
          ? _value.internal
          : internal // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileElementImplCopyWith<$Res>
    implements $FileElementCopyWith<$Res> {
  factory _$$FileElementImplCopyWith(
          _$FileElementImpl value, $Res Function(_$FileElementImpl) then) =
      __$$FileElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? internal});
}

/// @nodoc
class __$$FileElementImplCopyWithImpl<$Res>
    extends _$FileElementCopyWithImpl<$Res, _$FileElementImpl>
    implements _$$FileElementImplCopyWith<$Res> {
  __$$FileElementImplCopyWithImpl(
      _$FileElementImpl _value, $Res Function(_$FileElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? internal = freezed,
  }) {
    return _then(_$FileElementImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      internal: freezed == internal
          ? _value.internal
          : internal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileElementImpl implements _FileElement {
  const _$FileElementImpl({this.id, this.name, this.internal});

  factory _$FileElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileElementImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? internal;

  @override
  String toString() {
    return 'FileElement(id: $id, name: $name, internal: $internal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileElementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.internal, internal) ||
                other.internal == internal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, internal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileElementImplCopyWith<_$FileElementImpl> get copyWith =>
      __$$FileElementImplCopyWithImpl<_$FileElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileElementImplToJson(
      this,
    );
  }
}

abstract class _FileElement implements FileElement {
  const factory _FileElement(
      {final int? id,
      final String? name,
      final String? internal}) = _$FileElementImpl;

  factory _FileElement.fromJson(Map<String, dynamic> json) =
      _$FileElementImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get internal;
  @override
  @JsonKey(ignore: true)
  _$$FileElementImplCopyWith<_$FileElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Record _$RecordFromJson(Map<String, dynamic> json) {
  return _Record.fromJson(json);
}

/// @nodoc
mixin _$Record {
  int? get id => throw _privateConstructorUsedError;
  num? get value => throw _privateConstructorUsedError;
  num? get net => throw _privateConstructorUsedError;
  num? get gross => throw _privateConstructorUsedError;
  int? get currency_id => throw _privateConstructorUsedError;
  DateTime? get incurred => throw _privateConstructorUsedError;
  DateTime? get submitted => throw _privateConstructorUsedError;
  int? get type_id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get expense_id => throw _privateConstructorUsedError;
  dynamic get approved => throw _privateConstructorUsedError;
  dynamic get paid => throw _privateConstructorUsedError;
  dynamic get approved_by_id => throw _privateConstructorUsedError;
  dynamic get vat_rate => throw _privateConstructorUsedError;
  dynamic get vat_amount => throw _privateConstructorUsedError;
  int? get status_id => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  dynamic get filename => throw _privateConstructorUsedError;
  int? get hide => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  bool? get import_cplus => throw _privateConstructorUsedError;
  num? get is_deduction => throw _privateConstructorUsedError;
  dynamic get rejected => throw _privateConstructorUsedError;
  dynamic get rejected_by => throw _privateConstructorUsedError;
  dynamic get paid_by => throw _privateConstructorUsedError;
  dynamic get rejected_reason => throw _privateConstructorUsedError;
  dynamic get deleted_at => throw _privateConstructorUsedError;
  dynamic get deleted_by => throw _privateConstructorUsedError;
  String? get status_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordCopyWith<Record> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordCopyWith<$Res> {
  factory $RecordCopyWith(Record value, $Res Function(Record) then) =
      _$RecordCopyWithImpl<$Res, Record>;
  @useResult
  $Res call(
      {int? id,
      num? value,
      num? net,
      num? gross,
      int? currency_id,
      DateTime? incurred,
      DateTime? submitted,
      int? type_id,
      String? description,
      int? expense_id,
      dynamic approved,
      dynamic paid,
      dynamic approved_by_id,
      dynamic vat_rate,
      dynamic vat_amount,
      int? status_id,
      dynamic status,
      dynamic filename,
      int? hide,
      int? user_id,
      bool? import_cplus,
      num? is_deduction,
      dynamic rejected,
      dynamic rejected_by,
      dynamic paid_by,
      dynamic rejected_reason,
      dynamic deleted_at,
      dynamic deleted_by,
      String? status_name});
}

/// @nodoc
class _$RecordCopyWithImpl<$Res, $Val extends Record>
    implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? net = freezed,
    Object? gross = freezed,
    Object? currency_id = freezed,
    Object? incurred = freezed,
    Object? submitted = freezed,
    Object? type_id = freezed,
    Object? description = freezed,
    Object? expense_id = freezed,
    Object? approved = freezed,
    Object? paid = freezed,
    Object? approved_by_id = freezed,
    Object? vat_rate = freezed,
    Object? vat_amount = freezed,
    Object? status_id = freezed,
    Object? status = freezed,
    Object? filename = freezed,
    Object? hide = freezed,
    Object? user_id = freezed,
    Object? import_cplus = freezed,
    Object? is_deduction = freezed,
    Object? rejected = freezed,
    Object? rejected_by = freezed,
    Object? paid_by = freezed,
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as num?,
      gross: freezed == gross
          ? _value.gross
          : gross // ignore: cast_nullable_to_non_nullable
              as num?,
      currency_id: freezed == currency_id
          ? _value.currency_id
          : currency_id // ignore: cast_nullable_to_non_nullable
              as int?,
      incurred: freezed == incurred
          ? _value.incurred
          : incurred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      submitted: freezed == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type_id: freezed == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expense_id: freezed == expense_id
          ? _value.expense_id
          : expense_id // ignore: cast_nullable_to_non_nullable
              as int?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approved_by_id: freezed == approved_by_id
          ? _value.approved_by_id
          : approved_by_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vat_rate: freezed == vat_rate
          ? _value.vat_rate
          : vat_rate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vat_amount: freezed == vat_amount
          ? _value.vat_amount
          : vat_amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status_id: freezed == status_id
          ? _value.status_id
          : status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      import_cplus: freezed == import_cplus
          ? _value.import_cplus
          : import_cplus // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_deduction: freezed == is_deduction
          ? _value.is_deduction
          : is_deduction // ignore: cast_nullable_to_non_nullable
              as num?,
      rejected: freezed == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejected_by: freezed == rejected_by
          ? _value.rejected_by
          : rejected_by // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paid_by: freezed == paid_by
          ? _value.paid_by
          : paid_by // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejected_reason: freezed == rejected_reason
          ? _value.rejected_reason
          : rejected_reason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$RecordImplCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$$RecordImplCopyWith(
          _$RecordImpl value, $Res Function(_$RecordImpl) then) =
      __$$RecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      num? value,
      num? net,
      num? gross,
      int? currency_id,
      DateTime? incurred,
      DateTime? submitted,
      int? type_id,
      String? description,
      int? expense_id,
      dynamic approved,
      dynamic paid,
      dynamic approved_by_id,
      dynamic vat_rate,
      dynamic vat_amount,
      int? status_id,
      dynamic status,
      dynamic filename,
      int? hide,
      int? user_id,
      bool? import_cplus,
      num? is_deduction,
      dynamic rejected,
      dynamic rejected_by,
      dynamic paid_by,
      dynamic rejected_reason,
      dynamic deleted_at,
      dynamic deleted_by,
      String? status_name});
}

/// @nodoc
class __$$RecordImplCopyWithImpl<$Res>
    extends _$RecordCopyWithImpl<$Res, _$RecordImpl>
    implements _$$RecordImplCopyWith<$Res> {
  __$$RecordImplCopyWithImpl(
      _$RecordImpl _value, $Res Function(_$RecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? net = freezed,
    Object? gross = freezed,
    Object? currency_id = freezed,
    Object? incurred = freezed,
    Object? submitted = freezed,
    Object? type_id = freezed,
    Object? description = freezed,
    Object? expense_id = freezed,
    Object? approved = freezed,
    Object? paid = freezed,
    Object? approved_by_id = freezed,
    Object? vat_rate = freezed,
    Object? vat_amount = freezed,
    Object? status_id = freezed,
    Object? status = freezed,
    Object? filename = freezed,
    Object? hide = freezed,
    Object? user_id = freezed,
    Object? import_cplus = freezed,
    Object? is_deduction = freezed,
    Object? rejected = freezed,
    Object? rejected_by = freezed,
    Object? paid_by = freezed,
    Object? rejected_reason = freezed,
    Object? deleted_at = freezed,
    Object? deleted_by = freezed,
    Object? status_name = freezed,
  }) {
    return _then(_$RecordImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as num?,
      gross: freezed == gross
          ? _value.gross
          : gross // ignore: cast_nullable_to_non_nullable
              as num?,
      currency_id: freezed == currency_id
          ? _value.currency_id
          : currency_id // ignore: cast_nullable_to_non_nullable
              as int?,
      incurred: freezed == incurred
          ? _value.incurred
          : incurred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      submitted: freezed == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type_id: freezed == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expense_id: freezed == expense_id
          ? _value.expense_id
          : expense_id // ignore: cast_nullable_to_non_nullable
              as int?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approved_by_id: freezed == approved_by_id
          ? _value.approved_by_id
          : approved_by_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vat_rate: freezed == vat_rate
          ? _value.vat_rate
          : vat_rate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vat_amount: freezed == vat_amount
          ? _value.vat_amount
          : vat_amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status_id: freezed == status_id
          ? _value.status_id
          : status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      import_cplus: freezed == import_cplus
          ? _value.import_cplus
          : import_cplus // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_deduction: freezed == is_deduction
          ? _value.is_deduction
          : is_deduction // ignore: cast_nullable_to_non_nullable
              as num?,
      rejected: freezed == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejected_by: freezed == rejected_by
          ? _value.rejected_by
          : rejected_by // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paid_by: freezed == paid_by
          ? _value.paid_by
          : paid_by // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejected_reason: freezed == rejected_reason
          ? _value.rejected_reason
          : rejected_reason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$RecordImpl implements _Record {
  const _$RecordImpl(
      {this.id,
      this.value,
      this.net,
      this.gross,
      this.currency_id,
      this.incurred,
      this.submitted,
      this.type_id,
      this.description,
      this.expense_id,
      this.approved,
      this.paid,
      this.approved_by_id,
      this.vat_rate,
      this.vat_amount,
      this.status_id,
      this.status,
      this.filename,
      this.hide,
      this.user_id,
      this.import_cplus,
      this.is_deduction,
      this.rejected,
      this.rejected_by,
      this.paid_by,
      this.rejected_reason,
      this.deleted_at,
      this.deleted_by,
      this.status_name});

  factory _$RecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordImplFromJson(json);

  @override
  final int? id;
  @override
  final num? value;
  @override
  final num? net;
  @override
  final num? gross;
  @override
  final int? currency_id;
  @override
  final DateTime? incurred;
  @override
  final DateTime? submitted;
  @override
  final int? type_id;
  @override
  final String? description;
  @override
  final int? expense_id;
  @override
  final dynamic approved;
  @override
  final dynamic paid;
  @override
  final dynamic approved_by_id;
  @override
  final dynamic vat_rate;
  @override
  final dynamic vat_amount;
  @override
  final int? status_id;
  @override
  final dynamic status;
  @override
  final dynamic filename;
  @override
  final int? hide;
  @override
  final int? user_id;
  @override
  final bool? import_cplus;
  @override
  final num? is_deduction;
  @override
  final dynamic rejected;
  @override
  final dynamic rejected_by;
  @override
  final dynamic paid_by;
  @override
  final dynamic rejected_reason;
  @override
  final dynamic deleted_at;
  @override
  final dynamic deleted_by;
  @override
  final String? status_name;

  @override
  String toString() {
    return 'Record(id: $id, value: $value, net: $net, gross: $gross, currency_id: $currency_id, incurred: $incurred, submitted: $submitted, type_id: $type_id, description: $description, expense_id: $expense_id, approved: $approved, paid: $paid, approved_by_id: $approved_by_id, vat_rate: $vat_rate, vat_amount: $vat_amount, status_id: $status_id, status: $status, filename: $filename, hide: $hide, user_id: $user_id, import_cplus: $import_cplus, is_deduction: $is_deduction, rejected: $rejected, rejected_by: $rejected_by, paid_by: $paid_by, rejected_reason: $rejected_reason, deleted_at: $deleted_at, deleted_by: $deleted_by, status_name: $status_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.net, net) || other.net == net) &&
            (identical(other.gross, gross) || other.gross == gross) &&
            (identical(other.currency_id, currency_id) ||
                other.currency_id == currency_id) &&
            (identical(other.incurred, incurred) ||
                other.incurred == incurred) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.type_id, type_id) || other.type_id == type_id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.expense_id, expense_id) ||
                other.expense_id == expense_id) &&
            const DeepCollectionEquality().equals(other.approved, approved) &&
            const DeepCollectionEquality().equals(other.paid, paid) &&
            const DeepCollectionEquality()
                .equals(other.approved_by_id, approved_by_id) &&
            const DeepCollectionEquality().equals(other.vat_rate, vat_rate) &&
            const DeepCollectionEquality()
                .equals(other.vat_amount, vat_amount) &&
            (identical(other.status_id, status_id) ||
                other.status_id == status_id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.filename, filename) &&
            (identical(other.hide, hide) || other.hide == hide) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.import_cplus, import_cplus) ||
                other.import_cplus == import_cplus) &&
            (identical(other.is_deduction, is_deduction) ||
                other.is_deduction == is_deduction) &&
            const DeepCollectionEquality().equals(other.rejected, rejected) &&
            const DeepCollectionEquality()
                .equals(other.rejected_by, rejected_by) &&
            const DeepCollectionEquality().equals(other.paid_by, paid_by) &&
            const DeepCollectionEquality()
                .equals(other.rejected_reason, rejected_reason) &&
            const DeepCollectionEquality()
                .equals(other.deleted_at, deleted_at) &&
            const DeepCollectionEquality()
                .equals(other.deleted_by, deleted_by) &&
            (identical(other.status_name, status_name) ||
                other.status_name == status_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        value,
        net,
        gross,
        currency_id,
        incurred,
        submitted,
        type_id,
        description,
        expense_id,
        const DeepCollectionEquality().hash(approved),
        const DeepCollectionEquality().hash(paid),
        const DeepCollectionEquality().hash(approved_by_id),
        const DeepCollectionEquality().hash(vat_rate),
        const DeepCollectionEquality().hash(vat_amount),
        status_id,
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(filename),
        hide,
        user_id,
        import_cplus,
        is_deduction,
        const DeepCollectionEquality().hash(rejected),
        const DeepCollectionEquality().hash(rejected_by),
        const DeepCollectionEquality().hash(paid_by),
        const DeepCollectionEquality().hash(rejected_reason),
        const DeepCollectionEquality().hash(deleted_at),
        const DeepCollectionEquality().hash(deleted_by),
        status_name
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordImplCopyWith<_$RecordImpl> get copyWith =>
      __$$RecordImplCopyWithImpl<_$RecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordImplToJson(
      this,
    );
  }
}

abstract class _Record implements Record {
  const factory _Record(
      {final int? id,
      final num? value,
      final num? net,
      final num? gross,
      final int? currency_id,
      final DateTime? incurred,
      final DateTime? submitted,
      final int? type_id,
      final String? description,
      final int? expense_id,
      final dynamic approved,
      final dynamic paid,
      final dynamic approved_by_id,
      final dynamic vat_rate,
      final dynamic vat_amount,
      final int? status_id,
      final dynamic status,
      final dynamic filename,
      final int? hide,
      final int? user_id,
      final bool? import_cplus,
      final num? is_deduction,
      final dynamic rejected,
      final dynamic rejected_by,
      final dynamic paid_by,
      final dynamic rejected_reason,
      final dynamic deleted_at,
      final dynamic deleted_by,
      final String? status_name}) = _$RecordImpl;

  factory _Record.fromJson(Map<String, dynamic> json) = _$RecordImpl.fromJson;

  @override
  int? get id;
  @override
  num? get value;
  @override
  num? get net;
  @override
  num? get gross;
  @override
  int? get currency_id;
  @override
  DateTime? get incurred;
  @override
  DateTime? get submitted;
  @override
  int? get type_id;
  @override
  String? get description;
  @override
  int? get expense_id;
  @override
  dynamic get approved;
  @override
  dynamic get paid;
  @override
  dynamic get approved_by_id;
  @override
  dynamic get vat_rate;
  @override
  dynamic get vat_amount;
  @override
  int? get status_id;
  @override
  dynamic get status;
  @override
  dynamic get filename;
  @override
  int? get hide;
  @override
  int? get user_id;
  @override
  bool? get import_cplus;
  @override
  num? get is_deduction;
  @override
  dynamic get rejected;
  @override
  dynamic get rejected_by;
  @override
  dynamic get paid_by;
  @override
  dynamic get rejected_reason;
  @override
  dynamic get deleted_at;
  @override
  dynamic get deleted_by;
  @override
  String? get status_name;
  @override
  @JsonKey(ignore: true)
  _$$RecordImplCopyWith<_$RecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
