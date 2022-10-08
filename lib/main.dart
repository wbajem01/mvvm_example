/*
https://www.blog.devitpl.com/a-beginners-guide-to-implementing-mvvm-architecture-in-flutter/
MVVM implementation is simple.
All you have to do is follow the steps below:
  1. Create a new project.
  2. Get Dependencies.
  3. Create the model.
  4. Create UI.
  5. Create a web service.
  6. Create a view model.
  7. Create a widget.
  8. Create main.dart
 */

import 'package:mvvm_example/screens/news_screen.dart';
import 'package:mvvm_example/view_models/news_article_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.blue,
          statusBarBrightness: Brightness.light)
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        home: MultiProvider(
            providers: [
            ChangeNotifierProvider(
            create: (context) => NewsArticleListViewModel(),
            ),
            ],
        child: const NewsScreen(),
      ),
    );
  }
}
