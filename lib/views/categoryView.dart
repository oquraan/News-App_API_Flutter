import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryType});
  final String categoryType;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewsBuilder(
            categoryType: categoryType, 
          ),
        ],
      ),
    );
  }
}
