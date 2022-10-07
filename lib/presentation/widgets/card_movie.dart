import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pwc_task/data/model/moive_search/movie_search.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({Key? key, required this.moive}) : super(key: key);
  final MovieSearchItem moive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: GridTile(
        footer: SizedBox(
          height: 20.h,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: Colors.white.withOpacity(0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(moive.title.toString()),
                  Text(moive.year.toString()),
                ],
              ),
            ),
          ),
        ),
        child: Image.network(
          moive.poster,
          width: double.infinity,
          height: 300.h,
          fit: BoxFit.fitHeight,
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Text('Can not Load Image'),
            );
          },
        ),
      ),
    );
  }
}
