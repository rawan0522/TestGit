import 'package:flutter/material.dart';
import 'package:news_api/Provider/news_provider.dart';
import 'package:provider/provider.dart';
import 'package:news_api/Widget/news_contaner.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (context, provider, child) {
        final newsProvider = provider.newsModel?.news;

        if (newsProvider == null) {
          provider.fetchData();
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: newsProvider.length,
            itemBuilder: (context, index) {
              return NewsContainer(
                img: newsProvider[index]["urlToImage"],
                title: newsProvider[index]["title"],
                description: newsProvider[index]["description"],
              );
            },
          );
        }
      },
    );
  }
}