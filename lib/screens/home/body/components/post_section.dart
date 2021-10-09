import 'package:flutter/material.dart';
import 'package:pets_web/model/model.dart';

import '../../../../contants.dart';

class PostSection extends StatelessWidget {
  const PostSection({
    Key key,
    @required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefualtPadding / 2),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                product.image,
                height: 270,
                width: 270,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: kDefualtPadding / 2,
            ),
            //change row in to wrap
            Wrap(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
              ],
            ),
            SizedBox(
              height: kDefualtPadding / 2,
            ),
            Text(
              product.title,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: kDefualtPadding / 2,
            ),
            Text(
              product.description,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
