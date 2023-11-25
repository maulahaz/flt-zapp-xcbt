import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static String routeName = '/home';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Container()
        ],),
      ),
    );
  }
}

