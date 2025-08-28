import 'package:flutter/material.dart';
import 'package:news_app2/models/category_model.dart';
import 'package:news_app2/views/news_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return  NewsView(
            category: category.title,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter:
                    const ColorFilter.mode(Colors.black54, BlendMode.darken),
                image: AssetImage(category.image),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
            color: Colors.black45,
          ),
          child: Text(
            category.title,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
