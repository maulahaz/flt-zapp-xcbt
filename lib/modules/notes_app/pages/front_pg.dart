import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //--Top: App Title and Sort Button:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Notes App', style: TextStyle(fontSize: 30)),
              IconButton(
                onPressed: (){},
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.sort)))
            ],),
            
            
            //--Body:
          ],
        ),
      ),
    );
  }
}
