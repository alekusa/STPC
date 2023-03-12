import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stpc/src/pages/tabs_page.dart';
import 'package:stpc/src/services/news_service.dart';
import 'package:stpc/src/theme/tema.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsService()),
      ],
      child: MaterialApp(
        title: 'STPC',
        theme: miTema,
        debugShowCheckedModeBanner: false,
        home: TabsPage(),
      ),
    );
  }
}
