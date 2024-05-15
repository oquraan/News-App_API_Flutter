import 'package:dio/dio.dart';
import 'package:news_app/Models.dart/Article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticalModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=6f8002fd5cbf49dd8c12d288933f9ed9&category=$category");

      Map<String, dynamic> dataJSON = response.data;

      List<ArticalModel> articlesList = [];

      List<dynamic> articles = dataJSON["articles"];

      for (var articl in articles) {
        articlesList.add(ArticalModel.fromJasin(articl));
      }
      // for (var article in articles) {
      //   print(article["author"]);
      // }

      // final response1 = await dio.get(
      //     'https://newsapi.org/v2/top-headlines?category=sports&apiKey=6f8002fd5cbf49dd8c12d288933f9ed9&country=eg');
      // print(response1);
      return articlesList;
    } catch (e) {
      print("Erorre ${e}");
      return [];
      // TODO
    }
  }
}
