import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_api/Models/news_model.dart';
class NewsServices {
 static Dio dio = Dio();
static Future<NewsModel> gitServices() async{
String url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7c64a4b2debe40168c74926def260cdf";
var response = await dio.get(url);

 try{
   if(response.statusCode == 200){
     return NewsModel.formjson(response.data);
   }else{
     throw Exception("Failed to load task details");
   }
 }catch(e){
   throw Exception("Error $e");
 }

  }
}

