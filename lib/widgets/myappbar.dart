import 'package:flutter/material.dart';

PreferredSizeWidget MyAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.only(left: 24),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.grey[800],
          )),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 24),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.grey[800],
            )),
      )
    ],
  );
}
