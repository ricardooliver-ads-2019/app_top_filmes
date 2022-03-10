// ignore_for_file: prefer_const_constructors

import 'package:app_top_filmes/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {

  //var controller = Get.put(SplashController());

  SplashPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Container(
            //child: Text('Olá ${FirebaseRemoteConfig.instance.getString('api_token')}')),
            width: MediaQuery.of(context).size.width,
            height: Get.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover 
              ),
            ),
            child: Image.asset('assets/images/logo.png'),
        ),
      )
    );
  }
}