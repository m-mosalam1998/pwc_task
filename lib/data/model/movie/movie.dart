import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pwc_task/data/model/rating/rating.dart';
part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory Movie({
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Year') required String year,
    @JsonKey(name: 'Rated') required String rated,
    @JsonKey(name: 'Released') required String released,
    @JsonKey(name: 'Runtime') required String runtime,
    @JsonKey(name: 'Genre') required String genre,
    @JsonKey(name: 'Director') required String director,
    @JsonKey(name: 'Writer') required String writer,
    @JsonKey(name: 'Actors') required String actors,
    @JsonKey(name: 'Plot') required String plot,
    @JsonKey(name: 'Language') required String language,
    @JsonKey(name: 'Country') required String country,
    @JsonKey(name: 'Awards') required String awards,
    @JsonKey(name: 'Poster') required String poster,
    @JsonKey(name: 'Ratings') required List<Rating> ratings,
    @JsonKey(name: 'Metascore') required String metascore,
    @JsonKey(name: 'imdbRating') required String imdbRating,
    @JsonKey(name: 'imdbVotes') required String imdbVotes,
    @JsonKey(name: 'imdbID') required String imdbID,
    @JsonKey(name: 'Type') required String Type,
    @JsonKey(name: 'DVD') required String dVD,
    @JsonKey(name: 'BoxOffice') required String boxOffice,
    @JsonKey(name: 'Website') required String website,
    @JsonKey(name: 'Response') required String response,
  }) = _Movie;
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
