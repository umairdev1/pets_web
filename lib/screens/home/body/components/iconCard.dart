import 'package:flutter/material.dart';

import '../../../../contants.dart';

class IconContainerCard extends StatelessWidget {
  const IconContainerCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // ignore: prefer_const_literals_to_create_immutables

      children: [
        IconContainer(
          icon: Icons.delivery_dining,
          title: "Free Shipping\nfrom CHF50",
          press: () {},
        ),
        IconContainer(
          icon: Icons.favorite_outline,
          title: "99% Positive\nFeedback",
          press: () {},
        ),
        IconContainer(
          icon: Icons.wallet_membership_outlined,
          title: "Easy Online\nPurchase",
          press: () {},
        ),
        IconContainer(
          icon: Icons.card_travel_outlined,
          title: "Purchase\nWith PostCard",
          press: () {},
        ),
        IconContainer(
          icon: Icons.check_box_outlined,
          title: "Huge\nRange",
          press: () {},
        ),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  const IconContainer({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.press,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefualtPadding * 2, vertical: kDefualtPadding),
      child: InkWell(
        onTap: press,
        child: Container(
          //now change column in to wrap to make ui more beautiful
          child: Wrap(
            children: [
              Container(
                  padding: EdgeInsets.all(8.0),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon)),
              SizedBox(width: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
