// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryNewsEntity _$CategoryNewsEntityFromJson(Map<String, dynamic> json) {
  return _CategoryNewsEntity.fromJson(json);
}

/// @nodoc
class _$CategoryNewsEntityTearOff {
  const _$CategoryNewsEntityTearOff();

  _CategoryNewsEntity call(
      {@JsonKey(name: 'guid') required String id,
      required String categoryName,
      required RSSEnity news}) {
    return _CategoryNewsEntity(
      id: id,
      categoryName: categoryName,
      news: news,
    );
  }

  CategoryNewsEntity fromJson(Map<String, Object> json) {
    return CategoryNewsEntity.fromJson(json);
  }
}

/// @nodoc
const $CategoryNewsEntity = _$CategoryNewsEntityTearOff();

/// @nodoc
mixin _$CategoryNewsEntity {
  @JsonKey(name: 'guid')
  String get id => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  RSSEnity get news => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryNewsEntityCopyWith<CategoryNewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryNewsEntityCopyWith<$Res> {
  factory $CategoryNewsEntityCopyWith(
          CategoryNewsEntity value, $Res Function(CategoryNewsEntity) then) =
      _$CategoryNewsEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'guid') String id, String categoryName, RSSEnity news});

  $RSSEnityCopyWith<$Res> get news;
}

/// @nodoc
class _$CategoryNewsEntityCopyWithImpl<$Res>
    implements $CategoryNewsEntityCopyWith<$Res> {
  _$CategoryNewsEntityCopyWithImpl(this._value, this._then);

  final CategoryNewsEntity _value;
  // ignore: unused_field
  final $Res Function(CategoryNewsEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as RSSEnity,
    ));
  }

  @override
  $RSSEnityCopyWith<$Res> get news {
    return $RSSEnityCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc
abstract class _$CategoryNewsEntityCopyWith<$Res>
    implements $CategoryNewsEntityCopyWith<$Res> {
  factory _$CategoryNewsEntityCopyWith(
          _CategoryNewsEntity value, $Res Function(_CategoryNewsEntity) then) =
      __$CategoryNewsEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'guid') String id, String categoryName, RSSEnity news});

  @override
  $RSSEnityCopyWith<$Res> get news;
}

/// @nodoc
class __$CategoryNewsEntityCopyWithImpl<$Res>
    extends _$CategoryNewsEntityCopyWithImpl<$Res>
    implements _$CategoryNewsEntityCopyWith<$Res> {
  __$CategoryNewsEntityCopyWithImpl(
      _CategoryNewsEntity _value, $Res Function(_CategoryNewsEntity) _then)
      : super(_value, (v) => _then(v as _CategoryNewsEntity));

  @override
  _CategoryNewsEntity get _value => super._value as _CategoryNewsEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? news = freezed,
  }) {
    return _then(_CategoryNewsEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as RSSEnity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryNewsEntity
    with DiagnosticableTreeMixin
    implements _CategoryNewsEntity {
  _$_CategoryNewsEntity(
      {@JsonKey(name: 'guid') required this.id,
      required this.categoryName,
      required this.news});

  factory _$_CategoryNewsEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryNewsEntityFromJson(json);

  @override
  @JsonKey(name: 'guid')
  final String id;
  @override
  final String categoryName;
  @override
  final RSSEnity news;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryNewsEntity(id: $id, categoryName: $categoryName, news: $news)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryNewsEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('categoryName', categoryName))
      ..add(DiagnosticsProperty('news', news));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryNewsEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(news);

  @JsonKey(ignore: true)
  @override
  _$CategoryNewsEntityCopyWith<_CategoryNewsEntity> get copyWith =>
      __$CategoryNewsEntityCopyWithImpl<_CategoryNewsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryNewsEntityToJson(this);
  }
}

abstract class _CategoryNewsEntity implements CategoryNewsEntity {
  factory _CategoryNewsEntity(
      {@JsonKey(name: 'guid') required String id,
      required String categoryName,
      required RSSEnity news}) = _$_CategoryNewsEntity;

  factory _CategoryNewsEntity.fromJson(Map<String, dynamic> json) =
      _$_CategoryNewsEntity.fromJson;

  @override
  @JsonKey(name: 'guid')
  String get id => throw _privateConstructorUsedError;
  @override
  String get categoryName => throw _privateConstructorUsedError;
  @override
  RSSEnity get news => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryNewsEntityCopyWith<_CategoryNewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
