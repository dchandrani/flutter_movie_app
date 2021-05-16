import 'package:flutter/material.dart';
import 'package:flutter_movie_app/domain/entities/movie_entity.dart';
import 'package:flutter_movie_app/presentation/journeys/home/movie_carousel/movie_page_view.dart';
import 'package:flutter_movie_app/presentation/movie_app.dart';

class MovieCarouselWidget extends StatelessWidget {
  const MovieCarouselWidget({
    Key key,
    this.movies,
    this.defaultIndex,
  })  : assert(defaultIndex >= 0, 'default index can not be less than 0'),
        super(key: key);

  final List<MovieEntity> movies;
  final int defaultIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieApp(),
        MoviePageView(
          movies: movies,
          initialPage: defaultIndex,
        ),
      ],
    );
  }
}
