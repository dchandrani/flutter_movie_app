import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_movie_app/domain/entities/movie_entity.dart';
import 'package:flutter_movie_app/domain/entities/no_params.dart';
import 'package:flutter_movie_app/domain/usecases/get_trending.dart';
import 'package:meta/meta.dart';

part 'movie_carousel_event.dart';

part 'movie_carousel_state.dart';

class MovieCarouselBloc extends Bloc<MovieCarouselEvent, MovieCarouselState> {
  MovieCarouselBloc({
    @required this.getTrending,
  }) : super(MovieCarouselInitial());

  final GetTrending getTrending;

  @override
  Stream<MovieCarouselState> mapEventToState(
    MovieCarouselEvent event,
  ) async* {
    if (event is CarouselLoadEvent) {
      final moviesEither = await getTrending(NoParams());
      yield moviesEither.fold(
        (l) => MovieCarouselError(),
        (movies) => MovieCarouselLoaded(
          movies: movies,
          defaultIndex: event.defaultIndex,
        ),
      );
    }
  }
}
