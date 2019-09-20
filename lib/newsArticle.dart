import 'dart:convert';
import 'webservice.dart';


class NewsArticle {
  
  final String title; 
  final String descrption; 
  final String urlToImage; 

  NewsArticle({this.title, this.descrption, this.urlToImage});

  factory NewsArticle.fromJson(Map<String,dynamic> json) {
    return NewsArticle(
      title: json['title'], 
      descrption: json['description'], 
      urlToImage: json['urlToImage'] ?? "assets/images/placeholder.png"
    );
  
}

  static Resource<List<NewsArticle>> get all {
    
    return Resource(
      url: "https://newsapi.org/v2/everything?q=climate%20change&from=2019-8-21&to=2019-9-21sortBy=popularity&apiKey=0cf790498275413a9247f8b94b3843fd",
      parse: (response) {
        final result = json.decode(response.body); 
        Iterable list = result['articles'];
        return list.map((model) => NewsArticle.fromJson(model)).toList();
      }
    );

  }

}