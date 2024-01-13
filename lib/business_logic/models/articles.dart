import 'package:fx_app_challenge/business_logic/models/article.dart';

class Articles {
  final List<Article> articles;

  Articles({required this.articles});


  factory Articles.fromJson(Map snapshot){
    return Articles(
      articles : snapshot['articles'] ?? [],
    );
  }

  toJson() {
    return {
      "articles": articles,
    };
  }
}