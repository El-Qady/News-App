class ItemModel {
  final String? imageurl;
  final String title;
  final String? description;
  final String url;
  ItemModel(this.url, {this.imageurl, required this.title, this.description});

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        json['url'],

        
        imageurl: json['urlToImage'],
        title: json['title'],
        description: json['description'],
      );
}
