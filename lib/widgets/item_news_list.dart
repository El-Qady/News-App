import 'package:flutter/material.dart';
import 'package:news_app2/models/item_model.dart';
import 'package:news_app2/widgets/item_news.dart';

class ItemNewsList extends StatelessWidget {
  const ItemNewsList({
    super.key,
    required this.news,
  });

  final List<ItemModel> news;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: news.length,
      itemBuilder: (context, index) {
        return ItemNews(item: news[index]);
      },
    );
  }
}
