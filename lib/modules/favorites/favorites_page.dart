import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {

  const FavoritesPage({ Key? key }) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {

   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home Favoritos'),
      ),
      body: Container(
        child: Center(child: Text('Estou na Favorites Page')),
      ),
    );
  }
}