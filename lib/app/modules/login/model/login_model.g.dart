// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      id: json['id'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      token: json['token'] as String?,
      session: json['session'] as String?,
      a_group: json['a_group'] as int?,
      p_group: json['p_group'] as int?,
      currency_id: json['currency_id'] as int?,
      currency: json['currency'] as String?,
      currency_rate: json['currency_rate'] as int?,
      modules: (json['modules'] as List<dynamic>?)
          ?.map((e) => Module.fromJson(e as Map<String, dynamic>))
          .toList(),
      lists: json['lists'] == null
          ? null
          : Lists.fromJson(json['lists'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'token': instance.token,
      'session': instance.session,
      'a_group': instance.a_group,
      'p_group': instance.p_group,
      'currency_id': instance.currency_id,
      'currency': instance.currency,
      'currency_rate': instance.currency_rate,
      'modules': instance.modules,
      'lists': instance.lists,
    };

_$ListsImpl _$$ListsImplFromJson(Map<String, dynamic> json) => _$ListsImpl(
      gender: (json['gender'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      maritalStatuses: (json['maritalStatuses'] as List<dynamic>?)
          ?.map((e) => MaritalStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      agencies: json['agencies'] as List<dynamic>?,
      professions: json['professions'] as List<dynamic>?,
      positions: json['positions'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ListsImplToJson(_$ListsImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'countries': instance.countries,
      'maritalStatuses': instance.maritalStatuses,
      'agencies': instance.agencies,
      'professions': instance.professions,
      'positions': instance.positions,
    };

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$MaritalStatusImpl _$$MaritalStatusImplFromJson(Map<String, dynamic> json) =>
    _$MaritalStatusImpl(
      id: json['id'] as int?,
      sort: json['sort'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MaritalStatusImplToJson(_$MaritalStatusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sort': instance.sort,
      'name': instance.name,
    };

_$ModuleImpl _$$ModuleImplFromJson(Map<String, dynamic> json) => _$ModuleImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      link: json['link'] as String?,
      exact: json['exact'] as bool?,
      icon: json['icon'] as String?,
      children: json['children'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ModuleImplToJson(_$ModuleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'link': instance.link,
      'exact': instance.exact,
      'icon': instance.icon,
      'children': instance.children,
    };
