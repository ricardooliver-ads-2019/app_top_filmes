import 'package:app_top_filmes/application/ui/theme_extensions.dart';
import 'package:app_top_filmes/models/movie_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class MovieDetailContentTitle extends StatelessWidget {
  final MovieDetailModel? movie;
  const MovieDetailContentTitle({ Key? key, required this.movie }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(movie?.title ?? '', 
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          RatingStars(
            value: (movie?.stars ?? 1)/2,
            valueLabelVisibility: false,
            starColor: context.themeOrange,
          ),
          SizedBox(height: 5,),
          Text(
            movie?.genre.map((e) => e.name).join(', ') ?? '',
            style: TextStyle(
              fontSize: 11,
              color: context.themeGrey,
            ),
          ),
        ],
      ),
    );
  }

}