// ignore_for_file: non_constant_identifier_names

class MovieModel {
  int id;
  String original_language;
  String original_title;
  String overview;
  String poster_path;

  MovieModel({
    required this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.poster_path,
  });

  MovieModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    original_language = json['original_language'];
    original_title = json['original_title'];
    overview = json['overview'];
    poster_path = json['poster_path'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'poster_path': poster_path,
    };
  }
}
