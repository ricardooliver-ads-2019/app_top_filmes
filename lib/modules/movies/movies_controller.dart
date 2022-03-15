import 'package:app_top_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_top_filmes/models/genre_model.dart';
import 'package:app_top_filmes/models/movie_model.dart';
import 'package:app_top_filmes/services/movies/movies_service.dart';
import 'package:get/get.dart';

import 'package:app_top_filmes/services/genres/genres_service.dart';

class MoviesController extends GetxController with MessagesMixin{
  final GenresService _genresService;
  final MoviesService _moviesService;
  final _message = Rxn<MessageModel>();
  final genres = <GenreModel>[].obs;

  final popularMovies = <MovieModel>[].obs;
  final topRatedMovies = <MovieModel>[].obs;

  final _popularMoviesOriginal = <MovieModel>[];
  final _topRatedOriginal = <MovieModel>[];

  MoviesController({
    required GenresService genresService,
    required MoviesService moviesService
    }) : _genresService = genresService,
         _moviesService = moviesService;


  @override
  void onInit() {
    super.onInit();
    messageListener(_message);
  }

  @override
  Future<void> onReady() async{
    super.onReady();
    try {
      final genres = await _genresService.getGenres();
      this.genres.assignAll(genres);

      final popularMoviesData = await _moviesService.getPopularMovies();
      final topRatedMoviesData = await _moviesService.getTopRated();

      popularMovies.assignAll(popularMoviesData);
      topRatedMovies.assignAll(topRatedMoviesData);

    }catch (e, s) {
      print(e);
      print(s);
      _message(MessageModel.error(title: 'Erro!', message: ' Erro ao buscar dados'));
    }
  }
  
}
