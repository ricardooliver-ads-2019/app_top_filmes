// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MoviesPage extends StatelessWidget {

  const MoviesPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(child: Text('Estou na Movies Page')),
        ),
    );
  }
}