// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:sribu_test/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MovieService {
  String baseUrl =
      'https://api.themoviedb.org/3/movie/now_playing?api_key=92dd47985c4a43789fe29b3acb4ca78d&language=en-US&page=1';
  // 'https://api.themoviedb.org/3/movie/now_playing?api_key=api_key&language=en-US&page=1v';

  Future<List<MovieModel>> getMovies() async {
    var url = '$baseUrl/movies';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    // ignore: unused_label

    // ignore: avoid_print
    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['results'];
      List<MovieModel> movies = [];

      for (var item in data) {
        movies.add(MovieModel.fromJson(item));
      }

      return movies;
    } else {
      throw Exception('Failed Get Movie!');
    }
  }
}
