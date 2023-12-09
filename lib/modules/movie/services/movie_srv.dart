import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_app/modules/movie/models/movie_mdl.dart';
import 'package:flutter_app/configs/x_configs.dart';
import 'package:http/http.dart' as http;

// import '../x_movies.dart';

class MovieService {
  static Future<Either<String, List<MovieModel>>>
      fetchTrendingMovieData() async {
    var client = http.Client();
    final response = await client
        .get(Uri.parse("$BASE_URL_MOVIE/movie/popular?api_key=$API_KEY_MOVIE"));
    print(response.statusCode);
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final List<MovieModel> movies = (responseBody['results'] as List)
          .map((movie) => MovieModel.fromJson(movie))
          .toList();
      print('***fetchTrendingMovieData: OK');
      return Right(movies);
    } else {
      print('***fetchTrendingMovieData: error');
      return Left('Upss..error occured');
    }
  }

  static Future<List<MovieModel>> fetchTrendingMovieDataXX() async {
    var client = http.Client();
    List<MovieModel> dtGrocery = [];
    try {
      var response = await client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      print('***response.statusCode BB');
      print(response.statusCode);
      print(response);
      return dtGrocery;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
