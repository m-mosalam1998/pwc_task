import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pwc_task/data/web_services/movie_api.dart';
import 'package:pwc_task/service/massage_api.dart';

import '../model/moive_search/movie_search.dart';

class MovieRepository {
  final MovieApi movieApi;
  MovieRepository({required this.movieApi});

  Future<MessageApi> searchMovieByTitle(
      {required String title, String? year}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return MessageApi(
          isDone: false, bodyReturned: [], message: 'No internet Connection');
    } else {
      Map<String, dynamic>? dataResponse =
          await movieApi.searchMovieByTitle(title: title, year: year);
      if (dataResponse!['Response'] == 'False') {
        return MessageApi(
            isDone: false, bodyReturned: [], message: dataResponse['Error']);
      } else {
        var items = (dataResponse['Search']);
        List<MovieSearchItem> movies = [];
        for (var jsonMovie in items) {
          movies.add(MovieSearchItem.fromJson(jsonMovie));
        }

        return MessageApi(isDone: true, message: 'true', bodyReturned: movies);
      }
    }
  }
}
