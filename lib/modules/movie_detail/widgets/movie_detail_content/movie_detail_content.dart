import 'package:app_top_filmes/models/movie_detail_model.dart';
import 'package:app_top_filmes/modules/movie_detail/widgets/movie_detail_content/movie_detail_content_credits.dart';
import 'package:app_top_filmes/modules/movie_detail/widgets/movie_detail_content/movie_detail_content_main_cast.dart';
import 'package:app_top_filmes/modules/movie_detail/widgets/movie_detail_content/movie_detail_content_title.dart';
import 'package:flutter/material.dart';

import 'movie_detail_content_productoin_credits.dart';

class MovieDetailContent extends StatelessWidget {
  final MovieDetailModel? movie;
  

  MovieDetailContent({ Key? key,required this.movie }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieDetailContentTitle(movie: movie),
        MovieDetailContentCredits(movie: movie),
        MovieDetailContentProductoinCredits(movie: movie),
        MovieDetailContentMainCast(movie: movie),
      ],
    );
  }
}