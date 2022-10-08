import 'package:dio/dio.dart';
import '../models/news_article.dart';

class WebServices {
  var dio = Dio();

  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String baseUrl = "https://newsapi.org/v2/top-headlines?country=in&amp;apiKey=9e72a381576143e48ff8c07b8d2026f4";

    final response = await dio.get(baseUrl);

    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((article) => NewsArticle.fromJson(article)).toList();
    } else {
      throw Exception('Failed to get news articles');
    }
  }
}

