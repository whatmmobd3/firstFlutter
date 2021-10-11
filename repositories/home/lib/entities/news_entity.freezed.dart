// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsEntity _$NewsEntityFromJson(Map<String, dynamic> json) {
  return _NewsEntity.fromJson(json);
}

/// @nodoc
class _$NewsEntityTearOff {
  const _$NewsEntityTearOff();

  _NewsEntity call(
      {required List<CategoryNewsEntity> highlightsNews,
      required List<CategoryNewsEntity> news}) {
    return _NewsEntity(
      highlightsNews: highlightsNews,
      news: news,
    );
  }

  NewsEntity fromJson(Map<String, Object> json) {
    return NewsEntity.fromJson(json);
  }
}

/// @nodoc
const $NewsEntity = _$NewsEntityTearOff();

/// @nodoc
mixin _$NewsEntity {
  List<CategoryNewsEntity> get highlightsNews =>
      throw _privateConstructorUsedError;
  List<CategoryNewsEntity> get news => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsEntityCopyWith<NewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntityCopyWith<$Res> {
  factory $NewsEntityCopyWith(
          NewsEntity value, $Res Function(NewsEntity) then) =
      _$NewsEntityCopyWithImpl<$Res>;
  $Res call(
      {List<CategoryNewsEntity> highlightsNews, List<CategoryNewsEntity> news});
}

/// @nodoc
class _$NewsEntityCopyWithImpl<$Res> implements $NewsEntityCopyWith<$Res> {
  _$NewsEntityCopyWithImpl(this._value, this._then);

  final NewsEntity _value;
  // ignore: unused_field
  final $Res Function(NewsEntity) _then;

  @override
  $Res call({
    Object? highlightsNews = freezed,
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      highlightsNews: highlightsNews == freezed
          ? _value.highlightsNews
          : highlightsNews // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsEntity>,
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsEntity>,
    ));
  }
}

/// @nodoc
abstract class _$NewsEntityCopyWith<$Res> implements $NewsEntityCopyWith<$Res> {
  factory _$NewsEntityCopyWith(
          _NewsEntity value, $Res Function(_NewsEntity) then) =
      __$NewsEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CategoryNewsEntity> highlightsNews, List<CategoryNewsEntity> news});
}

/// @nodoc
class __$NewsEntityCopyWithImpl<$Res> extends _$NewsEntityCopyWithImpl<$Res>
    implements _$NewsEntityCopyWith<$Res> {
  __$NewsEntityCopyWithImpl(
      _NewsEntity _value, $Res Function(_NewsEntity) _then)
      : super(_value, (v) => _then(v as _NewsEntity));

  @override
  _NewsEntity get _value => super._value as _NewsEntity;

  @override
  $Res call({
    Object? highlightsNews = freezed,
    Object? news = freezed,
  }) {
    return _then(_NewsEntity(
      highlightsNews: highlightsNews == freezed
          ? _value.highlightsNews
          : highlightsNews // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsEntity>,
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsEntity with DiagnosticableTreeMixin implements _NewsEntity {
  _$_NewsEntity({required this.highlightsNews, required this.news});

  factory _$_NewsEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsEntityFromJson(json);

  @override
  final List<CategoryNewsEntity> highlightsNews;
  @override
  final List<CategoryNewsEntity> news;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsEntity(highlightsNews: $highlightsNews, news: $news)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsEntity'))
      ..add(DiagnosticsProperty('highlightsNews', highlightsNews))
      ..add(DiagnosticsProperty('news', news));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsEntity &&
            (identical(other.highlightsNews, highlightsNews) ||
                const DeepCollectionEquality()
                    .equals(other.highlightsNews, highlightsNews)) &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(highlightsNews) ^
      const DeepCollectionEquality().hash(news);

  @JsonKey(ignore: true)
  @override
  _$NewsEntityCopyWith<_NewsEntity> get copyWith =>
      __$NewsEntityCopyWithImpl<_NewsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsEntityToJson(this);
  }
}

abstract class _NewsEntity implements NewsEntity {
  factory _NewsEntity(
      {required List<CategoryNewsEntity> highlightsNews,
      required List<CategoryNewsEntity> news}) = _$_NewsEntity;

  factory _NewsEntity.fromJson(Map<String, dynamic> json) =
      _$_NewsEntity.fromJson;

  @override
  List<CategoryNewsEntity> get highlightsNews =>
      throw _privateConstructorUsedError;
  @override
  List<CategoryNewsEntity> get news => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsEntityCopyWith<_NewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
