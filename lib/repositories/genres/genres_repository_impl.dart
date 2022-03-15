// ignore_for_file: avoid_print

import 'package:app_top_filmes/application/rest_client/rest_client.dart';
import 'package:app_top_filmes/models/genre_model.dart';
import 'package:app_top_filmes/repositories/genres/genres_repository.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class GenresRepositoryImpl implements GenresRepository {
  final RestClient _restClient;


  GenresRepositoryImpl({
    required RestClient restClient,
  }): _restClient = restClient;
  
  @override
  Future<List<GenreModel>> getGenres() async{
    final result = await _restClient.get<List<GenreModel>>(
      '/genre/movie/list',
      query: {
        'api_key': FirebaseRemoteConfig.instance.getString('api_token'),
        'language': 'pt-br'
      },
      decoder: (data) {
        final resultData = data['genres'];
        if (resultData != null) {
          return resultData.map<GenreModel>((g) => GenreModel.fromMap(g)).toList();
        }
        return <GenreModel>[];
      }
    );

    if (result.hasError) {
      print(result.statusText);
      throw Exception("Erro ao buscar Genres");
    }

    return result.body ?? <GenreModel>[];
    
  }

}
