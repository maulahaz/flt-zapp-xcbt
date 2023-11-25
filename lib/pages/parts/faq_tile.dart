import 'package:flutter/material.dart';

class FAQTile extends StatelessWidget {
  final String title;
  final int sn;
  final IconData icon;
  final bgColor;
  const FAQTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.bgColor,
      required this.sn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: bgColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                    ),
                    child: Text(
                      sn.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: bgColor[800]),
                    )),
              ],
            ),
            Icon(icon, size: 50, color: bgColor[800]),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(title,
                  style: TextStyle(letterSpacing: 2.0, color: bgColor[800])),
            )
          ],
        ),
      ),
    );
  }
}
