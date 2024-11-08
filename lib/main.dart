import 'package:flutter/material.dart';
import 'package:news_api/Provider/news_provider.dart';
import 'package:provider/provider.dart';

import 'Screens/news_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',//////////comment/////////////
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (context) => NewsProvider(),
          child: NewsScreen(),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
