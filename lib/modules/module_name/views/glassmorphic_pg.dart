import 'package:flutter/material.dart';
import 'package:flutter_app/components/all_components.dart';
import 'package:flutter_app/configs/all_configs.dart';
import 'package:provider/provider.dart';

import '../all_glassmorphics.dart';

// import '../../quiz/pages/quiz_pg.dart';

class GlassmorphicPage extends StatefulWidget {
  const GlassmorphicPage({super.key});

  @override
  State<GlassmorphicPage> createState() => _GlassmorphicPageState();
}

class _GlassmorphicPageState extends State<GlassmorphicPage> {
  @override
  Widget build(BuildContext context) {
    var sz = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('lib/assets/images/calm.jpg')),
        ),
        child: CustomGlassmorphism(
            width: sz.width,
            height: sz.height,
            borderRadius: 0,
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          backgroundColor: kWhite, child: Icon(Icons.people)),
                      Text('O')
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Glassmorphic Page',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        Text('Welcome to learn something'),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Consumer<AreaModel>(
                      builder: (contex, value, index) {
                        return GridView.builder(
                          itemCount: value.areaItems.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1/1.3
                                  ),
                          itemBuilder: (context, index) {
                            return QuizAreaTile(
                                title: value.areaItems[index][0],
                                imagePath: value.areaItems[index][1],
                                color: value.areaItems[index][2]);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
