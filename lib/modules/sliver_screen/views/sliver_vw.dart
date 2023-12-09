import 'package:flutter/material.dart';

import '../x_sliver_screens.dart';

class SliverView extends StatelessWidget {
  final List<CarModel> carModels = [
    CarModel(id: 1, yearModel: '2022', type: 'Sedan', pictureUrl: 'https://picsum.photos/200'),
    CarModel(id: 2, yearModel: '2023', type: 'SUV', pictureUrl: 'https://picsum.photos/200'),
    // Add more CarModel instances as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Car Models'),
                background: Image.network(
                  'https://picsum.photos/200', // Replace with your image URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  CarModel car = carModels[index];

                  return ListTile(
                    title: Text('${car.yearModel} ${car.type}'),
                    subtitle: Text('ID: ${car.id}'),
                    leading: Image.network(
                      car.pictureUrl,
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  );
                },
                childCount: carModels.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
