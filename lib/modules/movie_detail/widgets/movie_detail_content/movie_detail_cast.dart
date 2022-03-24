import 'package:app_top_filmes/application/ui/theme_extensions.dart';
import 'package:app_top_filmes/models/cast_model.dart';
import 'package:flutter/material.dart';

class MovieDetailCast extends StatelessWidget {
  final CastModel? cast;
  const MovieDetailCast({ Key? key, this.cast }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return Container(
      width: 95,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(cast?.image ??'',
              width: 95,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Text(cast?.name??'', 
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(cast?.character?? '',
            style: TextStyle(
              fontSize: 12,
              color: context.themeGrey,
            ),
          ),
        ],
      ),
    );
  }
}