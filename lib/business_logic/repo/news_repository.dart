import 'dart:convert';

import 'package:fx_app_challenge/config/api_key.dart';
import 'package:fx_app_challenge/config/base_urls.dart';
import 'package:http/http.dart' as http;
import '../../config/constants.dart';
import '../models/article.dart';

class NewsRepository {

  Future getToStoriesByCountry() async {
    try {
      var url = Uri.parse('$newsBaseUrl/top-headlines?country=$countryCode&apiKey=$newsApiKey');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body)['articles'];
        final List<Article> articles = result.map((e) => Article.fromJson(e)).toList();
        return articles;
      } else {
        return [];
      }
    }catch(e){
      return [];
    }
  }


  Future getAllStories() async {
    try {
      var url = Uri.parse('$newsBaseUrl/everything?q=bitcoin&apiKey=$newsApiKey');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body)['articles'];
        final List<Article> articles = result.map((e) => Article.fromJson(e)).toList();
        return articles;
      } else {
        return [];
      }
    }catch(e){
      return [];
    }
  }

}