import 'package:flutter/material.dart';

import 'all_parts.dart';

class FAQTab extends StatelessWidget {
  FAQTab({super.key});

  final List faqItems = [
    // faqTitle, faqIcon, faqBG
    ['Area-1', 1,Icons.apple, Colors.pink], 
    ['Area-2', 2,Icons.sunny, Colors.blue], 
    ['Area-3', 3,Icons.architecture, Colors.green], 
    ['Area-9', 4,Icons.attractions, Colors.yellow], 
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: faqItems.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index){
        return FAQTile(sn: faqItems[index][1],title: faqItems[index][0], icon: faqItems[index][2],bgColor: faqItems[index][3]);
      },
    );
  }
}

