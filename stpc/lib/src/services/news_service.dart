import 'dart:html';

import 'package:flutter/material.dart';
import 'package:stpc/src/models/news_app.dart';
//import 'package:stpc/src/models/news_models.dart';
import 'package:http/http.dart' as http;

const ulrApi = 'https://newsapi.org/v2/top-headlines?country=ar&';
const apiKey = '3484d3a52a434d9896290311f2e17a86';

class NewsService with ChangeNotifier {
  List<Article> headlines = [];
  NewsService() {
    getTopHeadlines();
  }
  getTopHeadlines() async {
    final url = Uri.parse('https:');
    final resp = await http.get(url);
    final newsResponse = newsResponseFromJson(resp.body);
    headlines.addAll(newsResponse.articles);
    notifyListeners();
  }
}
