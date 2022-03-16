// ignore_for_file: prefer_const_constructors

import 'package:app_top_filmes/modules/movies/movies_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesHeader extends GetView<MoviesController> {

  const MoviesHeader({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 196,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          SizedBox(
            width: Get.width,
            child: Image.asset('assets/images/header.png',
              fit: BoxFit.cover,
            ),
          ),
          
          Container(
            width: Get.width * 0.9,
            padding: EdgeInsets.only(bottom: 20),
            child: TextField(
              onChanged: (value) => controller.filterByName(value),
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                fillColor: Colors.white,
                filled: true,
                labelText: "Procurar Filmes",
                labelStyle: TextStyle(
                  fontSize: 15, 
                  color: Colors.grey,
                ),
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.zero,
                floatingLabelBehavior: FloatingLabelBehavior.never
              ),
            ),
          )
        ],
      ),
    );
  }
}