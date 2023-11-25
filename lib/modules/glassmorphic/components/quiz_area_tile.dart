import 'package:flutter/material.dart';
// import 'package:flutter_app/components/all_components.dart';
import 'package:flutter_app/configs/all_configs.dart';

class QuizAreaTile extends StatelessWidget {
  final String title, imagePath;
  final color;
  const QuizAreaTile({super.key, required this.title, required this.imagePath, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Container(
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(children: [
        //--Image
        // Image.asset(title),
        SizedBox(height: 20,),
        Image.network(imagePath, height: 64),
        SizedBox(height: 20,),
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        //--AreaTitle
      ],),),
    );
  }
}

