import 'package:flutter/material.dart';

import '../x_movies.dart';

class MovieListPage extends StatelessWidget {
  final List<MovieModel> movies;  
  const MovieListPage({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children:
        List.generate(movies.length, (index){
          final row = movies[index];
          return MovieCard(row);
        })
      ),
    );
  }
}
