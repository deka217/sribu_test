// ignore_for_file: non_constant_identifier_names

class MovieModel {
  int id;
  String original_language;
  String original_title;
  String overview;

  MovieModel({
    required this.id,
    this.original_language,
    this.original_title,
    this.overview,
    this.poster_path,
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
      'original_language': name,
      'original_title': email,
      'overview': username,
      'poster_path': profilePhotoUrl,
      'token': token,
    };
  }
}
