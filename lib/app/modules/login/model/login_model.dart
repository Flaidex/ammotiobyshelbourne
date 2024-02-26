// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    int? id,
    String? first_name,
    String? last_name,
    String? token,
    String? session,
    int? a_group,
    int? p_group,
    int? currency_id,
    String? currency,
    int? currency_rate,
    List<Module>? modules,
    Lists? lists,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@freezed
class Lists with _$Lists {
  const factory Lists({
    List<Country>? gender,
    List<Country>? countries,
    List<MaritalStatus>? maritalStatuses,
    List<dynamic>? agencies,
    List<dynamic>? professions,
    List<dynamic>? positions,
  }) = _Lists;

  factory Lists.fromJson(Map<String, dynamic> json) => _$ListsFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    int? id,
    String? name,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
class MaritalStatus with _$MaritalStatus {
  const factory MaritalStatus({
    int? id,
    int? sort,
    String? name,
  }) = _MaritalStatus;

  factory MaritalStatus.fromJson(Map<String, dynamic> json) =>
      _$MaritalStatusFromJson(json);
}

@freezed
class Module with _$Module {
  const factory Module({
    int? id,
    String? name,
    String? link,
    bool? exact,
    String? icon,
    List<dynamic>? children,
  }) = _Module;

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);
}
