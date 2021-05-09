import 'package:dartz/dartz.dart';
import 'package:flutter_movie_app/data/data_sources/movie_remote_data_source.dart';
import 'package:flutter_movie_app/domain/entities/app_error.dart';
import 'package:flutter_movie_app/domain/entities/movie_entity.dart';
import 'package:flutter_movie_app/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource _remoteDataSource;

  MovieRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<AppError, List<MovieEntity>>> getTrending() async {
    try {
      final movies = await _remoteDataSource.getTrending();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getComingSoon() async {
    try {
      final movies = await _remoteDataSource.getComingSoon();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPlayingNow() async {
    try {
      final movies = await _remoteDataSource.getPlayingNow();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPopular() async {
    try {
      final movies = await _remoteDataSource.getPopular();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wrong'));
    }
  }
}
