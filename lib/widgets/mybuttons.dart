import 'package:flutter/material.dart';

import '../configs/all_configs.dart';
import '../helpers/all_helpers.dart';

class MyButtons extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const MyButtons({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    var tm = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: tm.primary, borderRadius: BorderRadius.circular(20)),
        child: child,
      ),
    );
  }
}

class MyAppButton {
  //--App Button Using Gradient
  static MaterialButton appPrimary(
      BuildContext context, String title, double width, Function() function) {
    return MaterialButton(
      minWidth: width,
      onPressed: function,
      child: Container(
        width: width,
        alignment: Alignment.center,
        padding: EdgeInsets.all(kDefaultPadding * 0.5), // 15
        decoration: BoxDecoration(
          gradient: kAppGradientPrim,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: kAppPrimaryDark, width: 2)
        ),
        child: Text(title, style: getFont(16, color: kBlack)),
      ),
    );
  }

  //--CommonButton.defaultBtn
  static MaterialButton defaultBtn(
      BuildContext context, String text, double width, Function() function) {
    return MaterialButton(
      minWidth: width,
      padding: EdgeInsets.all(20),
      onPressed: function,
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20)
              .copyWith(color: kBlack, fontWeight: FontWeight.bold)),
    );
  }

  //--CommonButton.successBtn
  static MaterialButton successBtn(
      BuildContext context, String text, double width, Function() function) {
    return MaterialButton(
      minWidth: width,
      padding: EdgeInsets.all(20),
      onPressed: function,
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20)
              .copyWith(color: kBlack, fontWeight: FontWeight.bold)),
    );
  }
}