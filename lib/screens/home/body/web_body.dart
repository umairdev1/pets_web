// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:pets_web/contants.dart';
import 'package:pets_web/model/model.dart';
import 'package:pets_web/screens/home/body/components/post_section.dart';

import 'components/iconCard.dart';

class WebBody extends StatelessWidget {
  const WebBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SafeArea(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(20.0),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                IconContainerCard(),
                Divider(),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefualtPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Products",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Text(
                          "New Products",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: kButtonColor),
                        ),
                      )
                    ],
                  ),
                ),
                Wrap(
                    spacing: kDefualtPadding,
                    children: List.generate(
                      products.length,
                      (index) => PostSection(
                        product: products[index],
                      ),
                    )),

                // Bannner
                Container(
                  padding: EdgeInsets.all(kDefualtPadding),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/care.png",
                        height: 220,
                        width: 220,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          "Care & hygiene dogs",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: MaterialButton(
                          height: 50.0,
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefualtPadding),
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          onPressed: () {},
                          child: Text(
                            "Browser Products",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                //now we Make Our design responsive
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
