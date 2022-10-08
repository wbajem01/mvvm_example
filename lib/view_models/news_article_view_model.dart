import '../models/news_article.dart';

class NewsArticleViewModel {
  final NewsArticle _newsArticle;

  NewsArticleViewModel({required NewsArticle article}) : _newsArticle = article;

  String get title {
    return _newsArticle.title;
  }

  String get author {
    return _newsArticle.author;
  }

  String get description {
    return _newsArticle.description;
  }

  String get url {
    return _newsArticle.url;
  }

  String get urlToImage {
    return _newsArticle.urlToImage;
  }

  String get publishedAt {
    return _newsArticle.publishedAt;
  }

  String get content {
    return _newsArticle.content;
  }
}