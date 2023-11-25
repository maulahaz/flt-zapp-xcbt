import 'package:flutter/material.dart';

class AreaModel extends ChangeNotifier{

  final List _areaItems = [
    //--[AreaTitle, imagePath, TileColor]
    ['Area 1', 'https://source.unsplash.com/random/600x800',Colors.green],
    ['Area 2', 'https://source.unsplash.com/random/600x800',Colors.yellow],
    ['Area 3', 'https://source.unsplash.com/random/600x800',Colors.blue],
    ['Area 9', 'https://source.unsplash.com/random/600x800',Colors.red],
  ];

  get areaItems => _areaItems;
}