import 'package:flutter/material.dart';
import '../components/all_components.dart';
import '../pages/all_pages.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    var thm = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //--Logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 20,),
            //--Title
            Text('Simple Shop', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            //--SubTitle
            SizedBox(height: 10,),
            Text('Premium Quality Product', style: TextStyle(color: thm.inversePrimary),),
            SizedBox(height: 20,),
            //--Button
            MyButtons(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MenuPage()));
            },child: Icon(Icons.arrow_forward),)
          ],
        ),
      ),
    );
  }
}
