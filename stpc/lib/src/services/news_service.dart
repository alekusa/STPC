import 'package:flutter/material.dart';
import 'package:stpc/src/models/news_models.dart';
import 'package:http/http.dart' as http;

class NewsService with ChangeNotifier {
  List<Movie> headlines = [];
  NewsService() {
    getTopHeadlines();
  }
  getTopHeadlines() async {
    final url = Uri.parse('https://limpio.fly.dev/character/');
    final resp = await http.get(url);

    final newsResponse = newsResponseFromJson(resp.body);
    //headlines.addAll(newsResponse.movies);
  }
}
