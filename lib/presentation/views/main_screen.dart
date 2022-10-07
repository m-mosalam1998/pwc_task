import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pwc_task/business_logic/movies_search/movies_api_cubit.dart';
import 'package:pwc_task/data/model/moive_search/movie_search.dart';
import 'package:pwc_task/data/repository/movie_repository.dart';
import 'package:pwc_task/data/web_services/movie_api.dart';
import 'package:pwc_task/presentation/widgets/card_movie.dart';
import 'package:pwc_task/presentation/widgets/login_field.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    BlocProvider.of<MoviesApiCubit>(context).serachMovies(title: 'break');
    FlutterNativeSplash.remove();
    super.initState();
  }

  ListViewMovie() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100.h,
            child: rowSearch(),
          ),
          listViewMoive(),
        ],
      ),
    );
  }

  rowSearch() {
    return Row(
      children: const [
        Expanded(
          child: TextFieldSearch(
            title: 'movie title',
            bottomPadding: 2,
            textInputType: TextInputType.text,
          ),
        ),
        Expanded(
          child: TextFieldSearch(
            title: 'OMDB id',
            bottomPadding: 2,
            textInputType: TextInputType.text,
          ),
        ),
      ],
    );
  }

  listViewMoive() {
    return BlocBuilder<MoviesApiCubit, MoviesApiState>(
      builder: (context, state) {
        List<MovieSearchItem> movies =
            (state is MoviesLoaded) ? (state as MoviesLoaded).movies : [];
        return Expanded(
          child: ListView.builder(
            itemCount: movies.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return CardMovie(
                moive: movies.elementAt(index),
              );
            },
          ),
        );
      },
    );
  }

  errorView() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<MoviesApiCubit, MoviesApiState>(
        builder: (context, state) {
          if (state is MoviesLoaded) {
            return ListViewMovie();
          } else if (state is MoviesErorr) {
            return errorView();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
