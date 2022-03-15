
import 'package:app_top_filmes/models/genre_model.dart';
import 'package:app_top_filmes/repositories/genres/genres_repository.dart';

abstract class GenresService {
  
  Future<List<GenreModel>> getGenres();
  
}
