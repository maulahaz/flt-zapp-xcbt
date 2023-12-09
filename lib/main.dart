import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

import 'configs/x_configs.dart';
// import 'modules/sliver_screen/x_sliver_screens.dart';
// import 'modules/home/x_homes.dart';
// import 'modules/dashboard/x_dashboards.dart';
// import 'modules/grocery/x_groceries.dart';
// import 'package:flutter_app/modules/movie/x_movies.dart';
import 'modules/onboarding/x_onboardings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App!!',
        theme: MyThemes.lightMode,
        darkTheme: MyThemes.darkMode,
        // home: const ModulesView(),
        // home: SliverView(),
        // home: HomePage(),
        // home: DashboardPage(),
        // home: GroceryPage(),
        // home: MovieHomePage(),
        home: OnboardingPage(),
      );
  }
}
