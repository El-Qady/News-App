import 'package:flutter/material.dart';
import 'package:news_app2/models/item_model.dart';
import 'package:news_app2/services/news_services.dart';
import 'package:news_app2/widgets/item_news_list.dart';

class FuturebuilderList extends StatelessWidget {
  const FuturebuilderList({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ItemModel>>(
      future: NewsService().getnews(category),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Expanded(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return ItemNewsList(news: snapshot.data!);
      },
    );
  }
}
