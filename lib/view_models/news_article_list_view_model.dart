import 'package:mvvm_example/models/news_article.dart';
import 'package:mvvm_example/services/web_services.dart';
import 'package:mvvm_example/view_models/news_article_view_model.dart';
import 'package:flutter/material.dart';

enum LoadingStatus { completed, searching, empty }

class NewsArticleListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  late List<NewsArticleViewModel> article;

  void topHeadlines() async {
    List<NewsArticle> newsArticle = await WebServices().fetchTopHeadlines();
    loadingStatus = LoadingStatus.searching;
    notifyListeners();

    article = newsArticle
      .map((article) => NewsArticleViewModel(article: article))
      .toList();

    if (article.isEmpty) {
      loadingStatus = LoadingStatus.empty;
    } else {
      loadingStatus = LoadingStatus.completed;
    }
    
    notifyListeners();
  }
}