import 'package:flutter/material.dart';
import 'package:news_api/Models/news_model.dart';
import 'package:news_api/Services/news_services.dart';
import 'package:provider/provider.dart';
class NewsProvider extends ChangeNotifier{
NewsModel? newsModel;

Future<void>fetchData() async{
  newsModel = await NewsServices.gitServices();
  notifyListeners();
}


}
