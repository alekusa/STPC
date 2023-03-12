import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stpc/src/services/news_service.dart';

class Tab1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);
    return const Scaffold(
      body: Center(child: Text('hola')),
    );
  }
}