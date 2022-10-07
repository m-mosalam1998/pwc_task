part of 'movies_api_cubit.dart';

@immutable
abstract class MoviesApiState {}

class MoviesApiInitial extends MoviesApiState {}

class MoviesLoading extends MoviesApiState {}

class MoviesLoaded extends MoviesApiState {
  final List<MovieSearchItem> movies;
  MoviesLoaded({required this.movies});
}

class MoviesErorr extends MoviesApiState {
  final String erorrMessage;
  MoviesErorr({required this.erorrMessage});
}
