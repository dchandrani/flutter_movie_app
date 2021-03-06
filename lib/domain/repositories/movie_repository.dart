import 'package:dartz/dartz.dart';
import 'package:flutter_movie_app/domain/entities/app_error.dart';
import 'package:flutter_movie_app/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Future<Either<AppError, List<MovieEntity>>> getTrending();

  Future<Either<AppError, List<MovieEntity>>> getPopular();

  Future<Either<AppError, List<MovieEntity>>> getComingSoon();

  Future<Either<AppError, List<MovieEntity>>> getPlayingNow();
}
