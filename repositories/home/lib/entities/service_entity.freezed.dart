// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'service_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceEntity _$ServiceEntityFromJson(Map<String, dynamic> json) {
  return _ServiceEntity.fromJson(json);
}

/// @nodoc
class _$ServiceEntityTearOff {
  const _$ServiceEntityTearOff();

  _ServiceEntity call(
      {required String name, required String icon, required String deeplink}) {
    return _ServiceEntity(
      name: name,
      icon: icon,
      deeplink: deeplink,
    );
  }

  ServiceEntity fromJson(Map<String, Object> json) {
    return ServiceEntity.fromJson(json);
  }
}

/// @nodoc
const $ServiceEntity = _$ServiceEntityTearOff();

/// @nodoc
mixin _$ServiceEntity {
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get deeplink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceEntityCopyWith<ServiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceEntityCopyWith<$Res> {
  factory $ServiceEntityCopyWith(
          ServiceEntity value, $Res Function(ServiceEntity) then) =
      _$ServiceEntityCopyWithImpl<$Res>;
  $Res call({String name, String icon, String deeplink});
}

/// @nodoc
class _$ServiceEntityCopyWithImpl<$Res>
    implements $ServiceEntityCopyWith<$Res> {
  _$ServiceEntityCopyWithImpl(this._value, this._then);

  final ServiceEntity _value;
  // ignore: unused_field
  final $Res Function(ServiceEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? deeplink = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      deeplink: deeplink == freezed
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ServiceEntityCopyWith<$Res>
    implements $ServiceEntityCopyWith<$Res> {
  factory _$ServiceEntityCopyWith(
          _ServiceEntity value, $Res Function(_ServiceEntity) then) =
      __$ServiceEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String icon, String deeplink});
}

/// @nodoc
class __$ServiceEntityCopyWithImpl<$Res>
    extends _$ServiceEntityCopyWithImpl<$Res>
    implements _$ServiceEntityCopyWith<$Res> {
  __$ServiceEntityCopyWithImpl(
      _ServiceEntity _value, $Res Function(_ServiceEntity) _then)
      : super(_value, (v) => _then(v as _ServiceEntity));

  @override
  _ServiceEntity get _value => super._value as _ServiceEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? deeplink = freezed,
  }) {
    return _then(_ServiceEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      deeplink: deeplink == freezed
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceEntity with DiagnosticableTreeMixin implements _ServiceEntity {
  _$_ServiceEntity(
      {required this.name, required this.icon, required this.deeplink});

  factory _$_ServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceEntityFromJson(json);

  @override
  final String name;
  @override
  final String icon;
  @override
  final String deeplink;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceEntity(name: $name, icon: $icon, deeplink: $deeplink)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceEntity'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('deeplink', deeplink));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.deeplink, deeplink) ||
                const DeepCollectionEquality()
                    .equals(other.deeplink, deeplink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(deeplink);

  @JsonKey(ignore: true)
  @override
  _$ServiceEntityCopyWith<_ServiceEntity> get copyWith =>
      __$ServiceEntityCopyWithImpl<_ServiceEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceEntityToJson(this);
  }
}

abstract class _ServiceEntity implements ServiceEntity {
  factory _ServiceEntity(
      {required String name,
      required String icon,
      required String deeplink}) = _$_ServiceEntity;

  factory _ServiceEntity.fromJson(Map<String, dynamic> json) =
      _$_ServiceEntity.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  String get deeplink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServiceEntityCopyWith<_ServiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
