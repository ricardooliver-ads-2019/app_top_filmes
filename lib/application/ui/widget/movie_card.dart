import 'dart:ffi';

import 'package:app_top_filmes/application/ui/filme_app_icons_icons.dart';
import 'package:app_top_filmes/application/ui/theme_extensions.dart';
import 'package:app_top_filmes/models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movie;
  final dateFormat = DateFormat('y');
  final VoidCallback favoriteCallback;
  MovieCard({ Key? key, required this.movie, required this.favoriteCallback }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed('/movie/detail', arguments: movie.id);
      },
      child: Container(
        //padding: EdgeInsets.all(8),
        width: 158,
        height: 280,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      clipBehavior: Clip.antiAlias,
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage, 
                        image: 'https://image.tmdb.org/t/p/w200/${movie.posterPath}',
                        width: 148,
                        height: 184,
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(movie.title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(dateFormat.format(DateTime.parse(movie.releaseDate)),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10, 
                      fontWeight: FontWeight.w600
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
    
              ),
            ),
            Positioned(
              right: -7,
              bottom: 70,
              child: Material(
                elevation: 5,
                shape: CircleBorder(),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height:30,
                  child: IconButton(
                    iconSize: 15,
                    onPressed: favoriteCallback,
                    icon: Icon(
                      movie.favorite
                      ? FilmeAppIcons.heart
                      : FilmeAppIcons.heart_empty,
                      color: movie.favorite ? context.themeRed: Colors.grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}