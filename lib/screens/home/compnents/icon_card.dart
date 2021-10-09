import 'package:flutter/material.dart';

import '../../../contants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonHeader(
          icon: Icons.person_outline,
          press: () {},
        ),
        IconButtonHeader(
          icon: Icons.shopping_cart_outlined,
          press: () {},
        ),
      ],
    );
  }
}

class IconButtonHeader extends StatelessWidget {
  const IconButtonHeader({
    Key key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  final IconData icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: kTextColor.withOpacity(0.2))),
      child: IconButton(onPressed: press, icon: Icon(icon)),
    );
  }
}
