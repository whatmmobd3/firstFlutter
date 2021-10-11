// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) {
  return _ImageEntity.fromJson(json);
}

/// @nodoc
class _$ImageEntityTearOff {
  const _$ImageEntityTearOff();

  _ImageEntity call({required String url, int? size}) {
    return _ImageEntity(
      url: url,
      size: size,
    );
  }

  ImageEntity fromJson(Map<String, Object> json) {
    return ImageEntity.fromJson(json);
  }
}

/// @nodoc
const $ImageEntity = _$ImageEntityTearOff();

/// @nodoc
mixin _$ImageEntity {
  String get url => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageEntityCopyWith<ImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEntityCopyWith<$Res> {
  factory $ImageEntityCopyWith(
          ImageEntity value, $Res Function(ImageEntity) then) =
      _$ImageEntityCopyWithImpl<$Res>;
  $Res call({String url, int? size});
}

/// @nodoc
class _$ImageEntityCopyWithImpl<$Res> implements $ImageEntityCopyWith<$Res> {
  _$ImageEntityCopyWithImpl(this._value, this._then);

  final ImageEntity _value;
  // ignore: unused_field
  final $Res Function(ImageEntity) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ImageEntityCopyWith<$Res>
    implements $ImageEntityCopyWith<$Res> {
  factory _$ImageEntityCopyWith(
          _ImageEntity value, $Res Function(_ImageEntity) then) =
      __$ImageEntityCopyWithImpl<$Res>;
  @override
  $Res call({String url, int? size});
}

/// @nodoc
class __$ImageEntityCopyWithImpl<$Res> extends _$ImageEntityCopyWithImpl<$Res>
    implements _$ImageEntityCopyWith<$Res> {
  __$ImageEntityCopyWithImpl(
      _ImageEntity _value, $Res Function(_ImageEntity) _then)
      : super(_value, (v) => _then(v as _ImageEntity));

  @override
  _ImageEntity get _value => super._value as _ImageEntity;

  @override
  $Res call({
    Object? url = freezed,
    Object? size = freezed,
  }) {
    return _then(_ImageEntity(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageEntity with DiagnosticableTreeMixin implements _ImageEntity {
  _$_ImageEntity({required this.url, this.size});

  factory _$_ImageEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageEntityFromJson(json);

  @override
  final String url;
  @override
  final int? size;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEntity(url: $url, size: $size)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageEntity'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('size', size));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageEntity &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$ImageEntityCopyWith<_ImageEntity> get copyWith =>
      __$ImageEntityCopyWithImpl<_ImageEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageEntityToJson(this);
  }
}

abstract class _ImageEntity implements ImageEntity {
  factory _ImageEntity({required String url, int? size}) = _$_ImageEntity;

  factory _ImageEntity.fromJson(Map<String, dynamic> json) =
      _$_ImageEntity.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  int? get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageEntityCopyWith<_ImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
