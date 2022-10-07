import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_search.freezed.dart';
part 'movie_search.g.dart';

@freezed
class MovieSearchItem with _$MovieSearchItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieSearchItem({
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Year') required String year,
    @JsonKey(name: 'imdbID') required String imdbID,
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'Poster') required String poster,
  }) = _MovieSearchItem;
  factory MovieSearchItem.fromJson(Map<String, dynamic> json) =>
      _$MovieSearchItemFromJson(json);
}
