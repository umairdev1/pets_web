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

class MobMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MenuContainer(
          press: () {},
          title: "Dogs",
        ),
        Divider(),
        MenuContainer(
          press: () {},
          title: "Cats",
        ),
        Divider(),
        MenuContainer(
          press: () {},
          title: "Birds",
        ),
        Divider(),
        MenuContainer(
          press: () {},
          title: "Fish",
        ),
      ],
    );
  }
}
