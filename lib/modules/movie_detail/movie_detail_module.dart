
import 'package:app_top_filmes/application/modules/module.dart';
import 'package:app_top_filmes/modules/movie_detail/movie_detail_bindings.dart';
import 'package:app_top_filmes/modules/movie_detail/movie_detail_page.dart';
import 'package:get/get.dart';

class MovieDetailModule extends Module{
  @override
  List<GetPage> routers = [
    GetPage(name: '/movie/detail', page: ()=> MovieDetailPage(),
      binding: MovieDetailBindings(),
    )
  ];
  
}