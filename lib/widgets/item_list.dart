import 'package:flutter/material.dart';
import 'package:news_app2/models/category_model.dart';
import 'package:news_app2/widgets/category_card.dart';
import 'package:news_app2/widgets/future_builder_list.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.categories});
  final List<CategoryModel> categories;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategoryCard(category: categories[index]);
            },
          ),
        ),
        const FuturebuilderList(
          category: "general",
        ),
      ],
    );
  }
}
