// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rss_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RSSEnity _$RSSEnityFromJson(Map<String, dynamic> json) {
  return _RSSEnity.fromJson(json);
}

/// @nodoc
class _$RSSEnityTearOff {
  const _$RSSEnityTearOff();

  _RSSEnity call(
      {@JsonKey(name: 'guid') required String id,
      @JsonKey(name: 'title') String title = '',
      @JsonKey(name: 'subTitle') String description = '',
      @JsonKey(name: 'image') ImageEntity? thumbnail,
      String? createdAt,
      String content = '',
      @JsonKey(name: 'categoryNews') required String categoryId}) {
    return _RSSEnity(
      id: id,
      title: title,
      description: description,
      thumbnail: thumbnail,
      createdAt: createdAt,
      content: content,
      categoryId: categoryId,
    );
  }

  RSSEnity fromJson(Map<String, Object> json) {
    return RSSEnity.fromJson(json);
  }
}

/// @nodoc
const $RSSEnity = _$RSSEnityTearOff();

/// @nodoc
mixin _$RSSEnity {
  @JsonKey(name: 'guid')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'subTitle')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  ImageEntity? get thumbnail => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryNews')
  String get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RSSEnityCopyWith<RSSEnity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RSSEnityCopyWith<$Res> {
  factory $RSSEnityCopyWith(RSSEnity value, $Res Function(RSSEnity) then) =
      _$RSSEnityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'guid') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'subTitle') String description,
      @JsonKey(name: 'image') ImageEntity? thumbnail,
      String? createdAt,
      String content,
      @JsonKey(name: 'categoryNews') String categoryId});

  $ImageEntityCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$RSSEnityCopyWithImpl<$Res> implements $RSSEnityCopyWith<$Res> {
  _$RSSEnityCopyWithImpl(this._value, this._then);

  final RSSEnity _value;
  // ignore: unused_field
  final $Res Function(RSSEnity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? createdAt = freezed,
    Object? content = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ImageEntity?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ImageEntityCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $ImageEntityCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value));
    });
  }
}

/// @nodoc
abstract class _$RSSEnityCopyWith<$Res> implements $RSSEnityCopyWith<$Res> {
  factory _$RSSEnityCopyWith(_RSSEnity value, $Res Function(_RSSEnity) then) =
      __$RSSEnityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'guid') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'subTitle') String description,
      @JsonKey(name: 'image') ImageEntity? thumbnail,
      String? createdAt,
      String content,
      @JsonKey(name: 'categoryNews') String categoryId});

  @override
  $ImageEntityCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$RSSEnityCopyWithImpl<$Res> extends _$RSSEnityCopyWithImpl<$Res>
    implements _$RSSEnityCopyWith<$Res> {
  __$RSSEnityCopyWithImpl(_RSSEnity _value, $Res Function(_RSSEnity) _then)
      : super(_value, (v) => _then(v as _RSSEnity));

  @override
  _RSSEnity get _value => super._value as _RSSEnity;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? createdAt = freezed,
    Object? content = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_RSSEnity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ImageEntity?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RSSEnity with DiagnosticableTreeMixin implements _RSSEnity {
  _$_RSSEnity(
      {@JsonKey(name: 'guid') required this.id,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'subTitle') this.description = '',
      @JsonKey(name: 'image') this.thumbnail,
      this.createdAt,
      this.content = '',
      @JsonKey(name: 'categoryNews') required this.categoryId});

  factory _$_RSSEnity.fromJson(Map<String, dynamic> json) =>
      _$_$_RSSEnityFromJson(json);

  @override
  @JsonKey(name: 'guid')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'subTitle')
  final String description;
  @override
  @JsonKey(name: 'image')
  final ImageEntity? thumbnail;
  @override
  final String? createdAt;
  @JsonKey(defaultValue: '')
  @override
  final String content;
  @override
  @JsonKey(name: 'categoryNews')
  final String categoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RSSEnity(id: $id, title: $title, description: $description, thumbnail: $thumbnail, createdAt: $createdAt, content: $content, categoryId: $categoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RSSEnity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('categoryId', categoryId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RSSEnity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(categoryId);

  @JsonKey(ignore: true)
  @override
  _$RSSEnityCopyWith<_RSSEnity> get copyWith =>
      __$RSSEnityCopyWithImpl<_RSSEnity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RSSEnityToJson(this);
  }
}

abstract class _RSSEnity implements RSSEnity {
  factory _RSSEnity(
      {@JsonKey(name: 'guid') required String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'subTitle') String description,
      @JsonKey(name: 'image') ImageEntity? thumbnail,
      String? createdAt,
      String content,
      @JsonKey(name: 'categoryNews') required String categoryId}) = _$_RSSEnity;

  factory _RSSEnity.fromJson(Map<String, dynamic> json) = _$_RSSEnity.fromJson;

  @override
  @JsonKey(name: 'guid')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'subTitle')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image')
  ImageEntity? get thumbnail => throw _privateConstructorUsedError;
  @override
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'categoryNews')
  String get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RSSEnityCopyWith<_RSSEnity> get copyWith =>
      throw _privateConstructorUsedError;
}
