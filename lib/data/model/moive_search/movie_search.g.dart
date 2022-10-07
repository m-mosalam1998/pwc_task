// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieSearchItem _$$_MovieSearchItemFromJson(Map<String, dynamic> json) =>
    _$_MovieSearchItem(
      title: json['Title'] as String,
      year: json['Year'] as String,
      imdbID: json['imdbID'] as String,
      type: json['Type'] as String,
      poster: json['Poster'] as String,
    );

Map<String, dynamic> _$$_MovieSearchItemToJson(_$_MovieSearchItem instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Year': instance.year,
      'imdbID': instance.imdbID,
      'Type': instance.type,
      'Poster': instance.poster,
    };
