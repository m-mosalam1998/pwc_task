import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pwc_task/data/model/moive_search/movie_search.dart';
import 'package:pwc_task/data/repository/movie_repository.dart';

part 'movies_api_state.dart';

class MoviesApiCubit extends Cubit<MoviesApiState> {
  final MovieRepository movieRepository;
  MoviesApiCubit({required this.movieRepository}) : super(MoviesApiInitial());
  serachMovies({required String title, String? year}) {
    movieRepository.searchMovieByTitle(title: title, year: year).then((value) {
      if (value.isDone) {
        print("done");
        emit(MoviesLoaded(movies: value.bodyReturned));
      } else {
        emit(MoviesErorr(erorrMessage: value.message));
      }
    }).catchError(() {
      print("erre");
    });
  }
}
