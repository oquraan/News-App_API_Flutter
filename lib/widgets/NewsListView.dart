import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models.dart/Article_model.dart';
import 'package:news_app/services/News_service.dart';
import 'package:news_app/widgets/NewsStyle.dart';

class NewsListView extends StatelessWidget {
   final   List<ArticalModel> articalList ;

   NewsListView({required this.articalList,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
          
    return  SliverList(
      
      
      delegate: SliverChildBuilderDelegate(
        childCount: articalList.length,
        (context, index) {
          
        
      return NewsTile(articalModel: articalList[index],);
    }));
  }
}
