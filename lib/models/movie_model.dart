// ignore_for_file: non_constant_identifier_names

class MovieModel {
  late int id;
  late String original_language;
  late String original_title;
  late String overview;
  late String poster_path;
  late String token;

  MovieModel({
    required this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.poster_path,
    required this.token,
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
      'token': token,
    };
  }
}
