import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stpc/src/services/news_service.dart';
import 'package:stpc/src/widgets/lista_noticias.dart';

class Tab1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final headlines = Provider.of<NewsService>(context).headlines;
    return Scaffold(body: ListaNoticias(headlines));
  }
}
