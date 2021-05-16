import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constants/size_constants.dart';
import 'package:flutter_movie_app/common/extensions/size_extensions.dart';
import 'package:flutter_movie_app/core/api_constants.dart';

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({
    Key key,
    this.movieId,
    this.posterPath,
  }) : super(key: key);

  final int movieId;
  final String posterPath;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 32,
      child: GestureDetector(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Sizes.dimen_16.w),
          child: CachedNetworkImage(
            imageUrl: '${ApiConstants.BASE_IMAGE_URL}$posterPath',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
