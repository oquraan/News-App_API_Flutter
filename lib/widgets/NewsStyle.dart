// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/Models.dart/Article_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  // const NewsTile({super.key, required this.articleModel});

  // final ArticleModel articleModel;
  final ArticalModel articalModel;
  NewsTile({required this.articalModel});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articalModel.image!=null? Image.network(
              articalModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ):Image.asset("assets/general.avif")),
        const SizedBox(
          height: 12,
        ),
        Text(
          "${articalModel.title} ", // articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
