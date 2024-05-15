import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models.dart/Article_model.dart';
import 'package:news_app/services/News_service.dart';
import 'package:news_app/widgets/NewsStyle.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticalModel> articalList = [];
  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
     getNews();
  }

  Future<void> getNews() async {
    articalList = await NewsService(Dio()).getNews(category: '');
    setState(() {
      
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
          
    return articalList.length==0?const SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height:250 ,),
                    CircularProgressIndicator(
                      
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ): SliverList(
      
      
      delegate: SliverChildBuilderDelegate(
        childCount: articalList.length,
        (context, index) {
          
        
      return NewsTile(articalModel: articalList[index],);
    }));
  }
}
