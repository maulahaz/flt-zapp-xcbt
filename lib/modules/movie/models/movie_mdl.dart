class MovieModel {
  final int id;
  final String title;
  final String overview;
  final String posterPath;

  MovieModel({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath
  });

  // Convert JSON into MovieModel
  factory MovieModel.fromJson(Map<String, dynamic> json){
    return MovieModel(
        id: json['id'],
        title: json['title'],
        overview: json['overview'],
        posterPath: json['poster_path']
    );
  }

  // Convert MovieModel into JSON
  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'title': title,
      'overview': overview,
      'poster_path': posterPath,
    };
  }

}

class MovieModelXY {
    int page;
    List<Result> results;
    int totalPages;
    int totalResults;

    MovieModelXY({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

}

class Result {
    bool adult;
    String backdropPath;
    List<int> genreIds;
    int id;
    OriginalLanguage originalLanguage;
    String originalTitle;
    String overview;
    double popularity;
    String posterPath;
    DateTime releaseDate;
    String title;
    bool video;
    double voteAverage;
    int voteCount;

    Result({
        required this.adult,
        required this.backdropPath,
        required this.genreIds,
        required this.id,
        required this.originalLanguage,
        required this.originalTitle,
        required this.overview,
        required this.popularity,
        required this.posterPath,
        required this.releaseDate,
        required this.title,
        required this.video,
        required this.voteAverage,
        required this.voteCount,
    });

}

enum OriginalLanguage {
    AR,
    EN,
    JA
}