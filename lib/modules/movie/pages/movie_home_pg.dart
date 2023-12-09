import 'package:flutter/material.dart';
import 'package:flutter_app/configs/x_configs.dart';
import 'package:flutter_app/helpers/x_helpers.dart';
import 'package:flutter_app/modules/movie/x_movies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieHomePage extends StatelessWidget {
  const MovieHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: kBlack,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Fabrice 👋',
              textAlign: TextAlign.start,
              style: getFont(16, color: kWhite, isBold: true),
            ),
            Text(
              'TDD - Movie App - CBT',
              style: getFont(16, color: kWhite, isBold: true),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        color: kBlack,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 290, color: kYellow),
              SizedBox(height: 10),
              Text(
                'Trending Movies',
                style: getFont(20, color: kWhite, isBold: true),
              ),
              BlocBuilder<TrendingMoviesBloc, TrendingMoviesState>(
                  builder: (context, state) {
                if (state is TrendingMoviesLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is TrendingMoviesLoaded) {
                  return MovieListPage(movies:state.movies);
                } else if (state is TrendingMoviesError) {
                  return Text(state.message);
                }
                return Container();
              })
            ],
          ),
        ),
      ),
    );
  }
}
