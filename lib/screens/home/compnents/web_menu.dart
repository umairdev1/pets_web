import 'package:flutter/material.dart';
import 'package:pets_web/contants.dart';

class WebMenu extends StatelessWidget {
  const WebMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuContainer(
          press: () {},
          title: "Dogs",
        ),
        MenuContainer(
          press: () {},
          title: "Cats",
        ),
        MenuContainer(
          press: () {},
          title: "Birds",
        ),
        MenuContainer(
          press: () {},
          title: "Fish",
        ),
      ],
    );
  }
}

class MenuContainer extends StatelessWidget {
  const MenuContainer({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(kDefualtPadding / 2),
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
