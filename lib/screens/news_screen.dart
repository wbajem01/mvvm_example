import 'package:mvvm_example/view_models/news_article_list_view_model.dart';
import 'package:mvvm_example/widgets/news_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<NewsArticleListViewModel>(context, listen: false).topHeadlines;
  }

  @override
  Widget build(BuildContext context) {
    var listviewModel = Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top News Headlines'),
      ),
      body: NewsGrid(articles: listviewModel.article),
    );
  }
}
