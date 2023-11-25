
import 'package:flutter/material.dart';
// import 'package:flutter_app/components/myappbar.dart';

import '../components/all_components.dart';
import 'parts/all_parts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Widget> myTabs = [
    // MenuTab(iconPath: 'lib/assets/icons/faq-svgrepo-com.svg'),
    MenuTab(iconPath: Icons.list),
    MenuTab(iconPath: Icons.question_answer),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var thm = Theme.of(context).colorScheme;
    return DefaultTabController(
      length:myTabs.length,
      child: Scaffold(
        appBar: MyAppBar(),
        body:Column(
          children: [
            Container(
              width: size.width,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.yellow
              ),
              child: Text('Good Habbits'),
            ),
            SizedBox(height: 30),
            TabBar(tabs: myTabs, indicatorColor: thm.inversePrimary),
            Expanded(child: TabBarView(children: [
              //--Page FAQ
              FAQTab(),
              //--Page Quiz
              QuizTab(),
            ],)),
            SizedBox(height: 30),
            Center(child: Text('Menu Page'),),
          ],
        )
      ),
    );
  }
}

