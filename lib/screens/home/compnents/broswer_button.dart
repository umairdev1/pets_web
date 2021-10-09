import 'package:flutter/material.dart';

import '../../../contants.dart';

class BrowserButton extends StatelessWidget {
  const BrowserButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: kDefualtPadding),
      color: kButtonColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      onPressed: () {},
      child: Text(
        "Browser Products",
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    );
  }
}
