import 'package:flutter/material.dart';
class NewsModel {
List<dynamic> news;

NewsModel({required this.news });

factory NewsModel.formjson(Map<String , dynamic> json){
 List<dynamic>fullData;
 fullData = json["articles"].map(
     (user){
      return {
       "urlToImage" : user["urlToImage"],
       "title" : user["title"],
       "description" : user["description"]
      };
     }
 ).toList();
return NewsModel(news: fullData);
}
}