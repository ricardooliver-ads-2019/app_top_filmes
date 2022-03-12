// ignore_for_file: prefer_const_constructors

import 'package:app_top_filmes/application/ui/theme_extensions.dart';
import 'package:flutter/material.dart';

class FilterTag extends StatelessWidget {

  const FilterTag({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
         margin: EdgeInsets.all(5),
         constraints: BoxConstraints(minWidth: 100, minHeight: 30),
         decoration: BoxDecoration(
           color: context.themeRed,
           borderRadius: BorderRadius.circular(30),
         ),
         child: Align(
           alignment: Alignment.center,
           child: Text('Infantil',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white
            ),
           ),
        ),
       );
  }
}