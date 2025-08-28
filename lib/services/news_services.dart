import 'package:dio/dio.dart';
import 'package:news_app2/models/item_model.dart';

class NewsService {
  final String apiKey = "752e292164984e07b18eaae337e666d0";
  final String baseUrl = "https://newsapi.org/v2/";
  final String topHeadlinesEndpoint = "top-headlines";
  final dio = Dio();
  Future<List<ItemModel>> getnews(category) async {
    try {
      final response = await dio.get(
          '$baseUrl$topHeadlinesEndpoint?country=us&apiKey=$apiKey&category=$category');
      var json = response.data;
      List<dynamic> articles = json['articles'];
      List<ItemModel> news = [];
      for (var article in articles) {
        news.add(
          ItemModel.fromJson(article),
        );
      }
      return news;
    } catch (e) {
      return [];
    }
  }
}
