
import 'package:app_top_filmes/models/movie_model.dart';

import '../../models/movie_detail_model.dart';

abstract class MoviesRepository {
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRated();
  Future<List<MovieDetailModel>> getDetail(int id);
}