import 'package:app_top_filmes/modules/movies/movies_controller.dart';
import 'package:app_top_filmes/repositories/genres/genres_repository.dart';
import 'package:app_top_filmes/repositories/genres/genres_repository_impl.dart';
import 'package:app_top_filmes/services/genres/genres_service.dart';
import 'package:app_top_filmes/services/genres/genres_service_impl.dart';
import 'package:app_top_filmes/services/movies/movies_service.dart';
import 'package:get/get.dart';

class MoviesBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRepository>(
      () => GenresRepositoryImpl(restClient: Get.find()),
    );

    Get.lazyPut<GenresService>(() => GenresServiceImpl(genreRepository: Get.find()));

    Get.lazyPut(() => MoviesController(genresService: Get.find(), moviesService: Get.find()));

  }
}