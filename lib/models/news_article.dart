class NewsArticle {
  late String author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String publishedAt;
  late String content;

  NewsArticle({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  // The part after the : is call the 'initializer list'.
  NewsArticle.fromJson(Map<String, dynamic> json) :
    author = json['author'],
    title = json['title'],
    content = json['content'],
    description = json['description'],
    url = json['url'],
    urlToImage = json['urlToImage'],
    publishedAt = json['publishedAt'];
}