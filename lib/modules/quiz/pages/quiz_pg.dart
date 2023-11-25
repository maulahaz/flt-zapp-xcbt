import 'package:flutter/material.dart';
import 'package:flutter_app/configs/all_configs.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            //--Skip Button:
            Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.sort),
                )),
            //--Quiz Number / Total Quiz:
            Text.rich(TextSpan(
                text: 'Question 1',
                style: TextStyle(color: kAppSecondary),
                children: [
                  TextSpan(
                      text: '/10',
                      style: TextStyle(color: kAppSecondary, fontSize: 10))
                ])),

            //--Navigator buttons:
          ],
        ),
      ),
    ));
  }
}
