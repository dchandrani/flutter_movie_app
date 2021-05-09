import 'package:flutter_movie_app/core/api_client.dart';
import 'package:flutter_movie_app/data/models/movie_model.dart';
import 'package:flutter_movie_app/data/models/movies_result_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();

  Future<List<MovieModel>> getPopular();

  Future<List<MovieModel>> getPlayingNow();

  Future<List<MovieModel>> getComingSoon();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final ApiClient _client;

  MovieRemoteDataSourceImpl(this._client);

  @override
  Future<List<MovieModel>> getTrending() async {
    final response = await _client.get('trending/movie/day');
    final movies = MoviesResult.fromJson(response).movies;
    return movies;
  }

  @override
  Future<List<MovieModel>> getPopular() async {
    final response = await _client.get('movie/popular');
    final movies = MoviesResult.fromJson(response).movies;
    return movies;
  }

  @override
  Future<List<MovieModel>> getPlayingNow() async {
    final response = await _client.get('movie/now_playing');
    final movies = MoviesResult.fromJson(response).movies;
    return movies;
  }

  @override
  Future<List<MovieModel>> getComingSoon() async {
    final response = await _client.get('movie/upcoming');
    final movies = MoviesResult.fromJson(response).movies;
    return movies;
  }
}
