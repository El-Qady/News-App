import 'package:flutter/material.dart';
import 'package:news_app2/widgets/future_builder_list.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          FuturebuilderList(
            category: category,
          )
        ],
      ),
    );
  }
}
