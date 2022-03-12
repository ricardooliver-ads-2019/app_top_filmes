import 'package:app_top_filmes/models/genre_model.dart';

abstract class GenresRepository {

  Future<List<GenreModel>> getGenres();

}