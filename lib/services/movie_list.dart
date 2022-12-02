// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:sribu_test/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MovieList {
  String baseUrl =
      'https://api.themoviedb.org/3/movie/now_playing?api_key=api_key&language=en-US&page=1';

  Future<MovieModel> register({
    required String original_language,
    required String original_title,
    required String overview,
    required String poster_path,
  }) async {
    var url = '$baseUrl/register';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'poster_path': poster_path,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      MovieModel user = MovieModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<MovieModel> login({
    String email,
    String password,
  }) async {
    var url = '$baseUrl/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
