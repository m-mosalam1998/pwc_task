// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieSearchItem _$MovieSearchItemFromJson(Map<String, dynamic> json) {
  return _MovieSearchItem.fromJson(json);
}

/// @nodoc
mixin _$MovieSearchItem {
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Year')
  String get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdbID')
  String get imdbID => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'Poster')
  String get poster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieSearchItemCopyWith<MovieSearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSearchItemCopyWith<$Res> {
  factory $MovieSearchItemCopyWith(
          MovieSearchItem value, $Res Function(MovieSearchItem) then) =
      _$MovieSearchItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Year') String year,
      @JsonKey(name: 'imdbID') String imdbID,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Poster') String poster});
}

/// @nodoc
class _$MovieSearchItemCopyWithImpl<$Res>
    implements $MovieSearchItemCopyWith<$Res> {
  _$MovieSearchItemCopyWithImpl(this._value, this._then);

  final MovieSearchItem _value;
  // ignore: unused_field
  final $Res Function(MovieSearchItem) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? year = freezed,
    Object? imdbID = freezed,
    Object? type = freezed,
    Object? poster = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      imdbID: imdbID == freezed
          ? _value.imdbID
          : imdbID // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieSearchItemCopyWith<$Res>
    implements $MovieSearchItemCopyWith<$Res> {
  factory _$$_MovieSearchItemCopyWith(
          _$_MovieSearchItem value, $Res Function(_$_MovieSearchItem) then) =
      __$$_MovieSearchItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Year') String year,
      @JsonKey(name: 'imdbID') String imdbID,
      @JsonKey(name: 'Type') String type,
      @JsonKey(name: 'Poster') String poster});
}

/// @nodoc
class __$$_MovieSearchItemCopyWithImpl<$Res>
    extends _$MovieSearchItemCopyWithImpl<$Res>
    implements _$$_MovieSearchItemCopyWith<$Res> {
  __$$_MovieSearchItemCopyWithImpl(
      _$_MovieSearchItem _value, $Res Function(_$_MovieSearchItem) _then)
      : super(_value, (v) => _then(v as _$_MovieSearchItem));

  @override
  _$_MovieSearchItem get _value => super._value as _$_MovieSearchItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? year = freezed,
    Object? imdbID = freezed,
    Object? type = freezed,
    Object? poster = freezed,
  }) {
    return _then(_$_MovieSearchItem(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      imdbID: imdbID == freezed
          ? _value.imdbID
          : imdbID // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_MovieSearchItem implements _MovieSearchItem {
  const _$_MovieSearchItem(
      {@JsonKey(name: 'Title') required this.title,
      @JsonKey(name: 'Year') required this.year,
      @JsonKey(name: 'imdbID') required this.imdbID,
      @JsonKey(name: 'Type') required this.type,
      @JsonKey(name: 'Poster') required this.poster});

  factory _$_MovieSearchItem.fromJson(Map<String, dynamic> json) =>
      _$$_MovieSearchItemFromJson(json);

  @override
  @JsonKey(name: 'Title')
  final String title;
  @override
  @JsonKey(name: 'Year')
  final String year;
  @override
  @JsonKey(name: 'imdbID')
  final String imdbID;
  @override
  @JsonKey(name: 'Type')
  final String type;
  @override
  @JsonKey(name: 'Poster')
  final String poster;

  @override
  String toString() {
    return 'MovieSearchItem(title: $title, year: $year, imdbID: $imdbID, type: $type, poster: $poster)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieSearchItem &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.imdbID, imdbID) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.poster, poster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(imdbID),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(poster));

  @JsonKey(ignore: true)
  @override
  _$$_MovieSearchItemCopyWith<_$_MovieSearchItem> get copyWith =>
      __$$_MovieSearchItemCopyWithImpl<_$_MovieSearchItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieSearchItemToJson(
      this,
    );
  }
}

abstract class _MovieSearchItem implements MovieSearchItem {
  const factory _MovieSearchItem(
          {@JsonKey(name: 'Title') required final String title,
          @JsonKey(name: 'Year') required final String year,
          @JsonKey(name: 'imdbID') required final String imdbID,
          @JsonKey(name: 'Type') required final String type,
          @JsonKey(name: 'Poster') required final String poster}) =
      _$_MovieSearchItem;

  factory _MovieSearchItem.fromJson(Map<String, dynamic> json) =
      _$_MovieSearchItem.fromJson;

  @override
  @JsonKey(name: 'Title')
  String get title;
  @override
  @JsonKey(name: 'Year')
  String get year;
  @override
  @JsonKey(name: 'imdbID')
  String get imdbID;
  @override
  @JsonKey(name: 'Type')
  String get type;
  @override
  @JsonKey(name: 'Poster')
  String get poster;
  @override
  @JsonKey(ignore: true)
  _$$_MovieSearchItemCopyWith<_$_MovieSearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}
