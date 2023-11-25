import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class CustomGlassmorphism extends StatelessWidget {
  final double width, height, borderRadius;
  final Widget child;
  const CustomGlassmorphism(
      {super.key,
      required this.width,
      required this.height,
      this.borderRadius  = 20,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: width,
      height: height,
      borderRadius: borderRadius,
      blur: 20,
      border: 2,
      linearGradient: LinearGradient(colors: [
        Color(0xffffff).withOpacity(0.1),
        Color(0xffffff).withOpacity(0.05),
      ]),
      borderGradient: LinearGradient(colors: [
        Color(0xffffff).withOpacity(0.5),
        Color(0xffffff).withOpacity(0.5),
      ]),
      child: child,
    );
  }
}
