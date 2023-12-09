
import 'package:flutter_app/modules/movie/x_movies.dart';

abstract class TrendingMoviesState {}

class TrendingMoviesInitial extends TrendingMoviesState {}
class TrendingMoviesLoading extends TrendingMoviesState {}
class TrendingMoviesLoaded extends TrendingMoviesState {
  final List<MovieModel> movies;
  // final MovieModel movies;

  TrendingMoviesLoaded(this.movies);
}

class TrendingMoviesError extends TrendingMoviesState {
  final String message;

  TrendingMoviesError(this.message);
}