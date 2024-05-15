import 'package:flutter/material.dart';
import 'package:news_app/Models.dart/categoryModel.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

    final   List<CategoryModel> catogrtyList = const[
      CategoryModel(imageCatogres: 'assets/business.avif', CategoryName: 'business'),
            CategoryModel(imageCatogres: 'assets/entertaiment.avif', CategoryName: 'entertainment'),

      CategoryModel(imageCatogres: 'assets/general.avif', CategoryName: 'general'),

      CategoryModel(imageCatogres: 'assets/health.avif', CategoryName: 'health'),


      CategoryModel(imageCatogres: 'assets/science.avif', CategoryName: 'science'),

      CategoryModel(imageCatogres: 'assets/sports.avif', CategoryName: 'sports'),

      CategoryModel(imageCatogres: 'assets/technology.jpeg', CategoryName: 'technology'),

      
      ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catogrtyList.length,
          itemBuilder: (context, index) {
            return CategoresCard(
              category: catogrtyList[index],
            );
          }),
    );
  }
}