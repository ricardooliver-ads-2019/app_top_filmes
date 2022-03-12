// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_top_filmes/modules/movies/widgets/filter_tag.dart';
import 'package:flutter/material.dart';

class MoviesFilters extends StatelessWidget {

  const MoviesFilters({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FilterTag(),
          ],
        ),
      ),
    );
  }
}