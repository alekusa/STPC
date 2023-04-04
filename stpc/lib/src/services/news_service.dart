import 'package:flutter/material.dart';
import 'package:stpc/src/models/news_app.dart';
// de mi app -> ver funcionamiento
//import 'package:stpc/src/models/news_models.dart';
//https://limpio.fly.dev/character/
import 'package:http/http.dart' as http;

const urlApi = 'https://newsapi.org/v2/top-headlines?country=ar';
const apiKey = '3484d3a52a434d9896290311f2e17a86';

class NewsService with ChangeNotifier {
  List<Article> headlines = [];
  NewsService() {
    getTopHeadlines();
  }
  getTopHeadlines() async {
    final url = Uri.parse('$urlApi&apiKey=$apiKey');
    //final url = Uri.parse('https://limpio.fly.dev/character/');
    final resp = await http.get(url);
    final newsResponse = newsResponseFromJson(resp.body);
    headlines.addAll(newsResponse.articles);
    notifyListeners();
  }
}
