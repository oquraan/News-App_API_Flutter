import 'package:flutter/material.dart';
import 'package:news_app/services/News_service.dart';
import 'package:news_app/views/HomePage.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const NewsApp());
  NewsService(Dio()).getNews(category: 'general');
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
