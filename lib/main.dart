import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

//-----------------------------------------------------

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      debugShowCheckedModeBanner: false,
      home: Container(child: Center(child: Text('Welcome'),),)
    );
  }
}
