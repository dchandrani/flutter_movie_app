import 'package:flutter_movie_app/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  final List<int> genreIds;
  final String overview;
  final String originalTitle;
  final String posterPath;
  final bool video;
  final double voteAverage;
  final int id;
  final int voteCount;
  final String releaseDate;
  final String title;
  final bool adult;
  final String backdropPath;
  final String originalLanguage;
  final double popularity;
  final String mediaType;

  MovieModel({
    this.genreIds,
    this.overview,
    this.originalTitle,
    this.posterPath,
    this.video,
    this.voteAverage,
    this.id,
    this.voteCount,
    this.releaseDate,
    this.title,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.popularity,
    this.mediaType,
  }) : super(
          id: id,
          title: title,
          backdropPath: backdropPath,
          releaseDate: releaseDate,
          voteAverage: voteAverage,
          overview: overview,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      genreIds: json['genre_ids'].cast<int>(),
      overview: json['overview'],
      originalTitle: json['original_title'],
      posterPath: json['poster_path'],
      video: json['video'],
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      id: json['id'],
      voteCount: json['vote_count'],
      releaseDate: json['release_date'],
      title: json['title'],
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      originalLanguage: json['original_language'],
      popularity: json['popularity']?.toDouble() ?? 0.0,
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['genre_ids'] = this.genreIds;
    data['overview'] = this.overview;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['id'] = this.id;
    data['vote_count'] = this.voteCount;
    data['release_date'] = this.releaseDate;
    data['title'] = this.title;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['original_language'] = this.originalLanguage;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
