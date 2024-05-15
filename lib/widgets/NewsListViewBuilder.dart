import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models.dart/Article_model.dart';
import 'package:news_app/services/News_service.dart';
import 'package:news_app/widgets/NewsListView.dart';

class NewsListViewsBuilder extends StatefulWidget {
  const NewsListViewsBuilder({
    super.key,
    required this.categoryType,
  });
  final String categoryType;

  @override
  State<NewsListViewsBuilder> createState() => _NewsListViewsBuilderState();
}

class _NewsListViewsBuilderState extends State<NewsListViewsBuilder> {
  // bool isLoading = true;
  var future;

  @override
  void initState() {
    // TODO: implement initState

    future = NewsService(Dio()).getNews(category:widget.categoryType );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("ooops Errore  ,try later");
          } else if (snapshot.hasData) {
            return NewsListView(
              articalList: snapshot.data!,
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            );
          }
        });
    //  isLoading
    //     ?  const SliverToBoxAdapter(
    //         child: Center(
    //           child: Column(
    //             children: [
    //               SizedBox(
    //                 height: 250,
    //               ),
    //               CircularProgressIndicator(
    //                 color: Colors.blue,
    //               ),
    //             ],
    //           ),
    //         ),
    //       )
    //     : articalList.isNotEmpty
    //         ? NewsListView(
    //             articalList: articalList,
    //           )
    //         : SliverToBoxAdapter(child: Text("Error  "));
  }
}
