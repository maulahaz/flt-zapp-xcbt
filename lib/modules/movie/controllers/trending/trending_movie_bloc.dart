// import 'package:flutter_app/modules/movie/x_movies.dart';
import 'package:flutter_app/modules/movie/controllers/trending/trending_movie_event.dart';
import 'package:flutter_app/modules/movie/controllers/trending/trending_movie_state.dart';
import 'package:flutter_app/modules/movie/services/movie_srv.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingMoviesBloc
    extends Bloc<TrendingMoviesEvent, TrendingMoviesState> {
  TrendingMoviesBloc() : super(TrendingMoviesInitial()) {
    on<FetchTrendingMovies>(handleFetchTrendingMovies);
  }

  Future<void> handleFetchTrendingMovies(event, emit) async {
    print('***handleFetchTrendingMovies');
    emit(TrendingMoviesLoading());
    // await Future.delayed(Duration(seconds: 1));
    final result = await MovieService.fetchTrendingMovieData();
    result.fold(
      (L) => emit(TrendingMoviesError(L)),
      (R) => emit(TrendingMoviesLoaded(R)),
    );
  }

  Future<void> handleFetchTrendingMoviesXX(event, emit) async {
    print('***handleFetchTrendingMoviesXX');
    emit(TrendingMoviesLoading());
    await Future.delayed(Duration(seconds: 3));
    final result = await MovieService.fetchTrendingMovieDataXX();
    emit(TrendingMoviesLoaded(result));
  }  
}
