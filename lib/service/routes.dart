import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pwc_task/business_logic/movies_search/movies_api_cubit.dart';
import 'package:pwc_task/data/repository/movie_repository.dart';
import 'package:pwc_task/data/web_services/movie_api.dart';
import 'package:pwc_task/presentation/views/splash_screen.dart';

import '../presentation/views/main_screen.dart';

class Routes {
  static const String mainScreen = "./";
}

class AppRoutes {
  late MoviesApiCubit moviesApiCubit;
  late MovieRepository movieRepository;
  AppRoutes() {
    movieRepository = MovieRepository(movieApi: MovieApi());
    moviesApiCubit = MoviesApiCubit(movieRepository: movieRepository);
  }
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.mainScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => moviesApiCubit,
                  child: const MainScreen(),
                ));
      default:
    }
    return null;
  }
}
