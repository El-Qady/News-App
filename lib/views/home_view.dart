import 'package:flutter/material.dart';
import 'package:news_app2/models/category_model.dart';
import 'package:news_app2/widgets/item_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/business.jpg", title: "Business"),
    CategoryModel(image: "assets/entertaiment.jpg", title: "Entertainment"),
    CategoryModel(image: "assets/health.jpg", title: "Health"),
    CategoryModel(image: "assets/science.jpg", title: "Science"),
    CategoryModel(image: "assets/sport.jpg", title: "Sports"),
    CategoryModel(image: "assets/technology.jpg", title: "Technology"),
    CategoryModel(image: "assets/general.jpg", title: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: const Text(
            "News App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ItemList(categories: categories));
  }
}
