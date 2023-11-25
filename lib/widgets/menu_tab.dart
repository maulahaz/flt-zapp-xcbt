import 'package:flutter/material.dart';

class MenuTab extends StatelessWidget {
  // final String iconPath;
  final IconData iconPath;
  const MenuTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        // child: Image.asset(iconPath, color: Colors.grey[800]),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(iconPath, color: Colors.grey[800]),
      ),
    );
  }
}
