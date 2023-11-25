//--Ref: https://www.youtube.com/watch?v=4Na6MF_9tIE
import 'package:flutter/material.dart';
import 'package:flutter_app/configs/all_configs.dart';

import 'all_pages.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: Themes.lightMode,
      home: const FrontPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}