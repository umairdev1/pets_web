// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pets_web/model/responsive.dart';

import '../../../../contants.dart';
import '../broswer_button.dart';
import '../icon_card.dart';
import '../searchbar.dart';
import '../web_menu.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                ResponsiveWidget(
                  mobile: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        "PETIAN",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Spacer(),
                      IconCard(),
                    ],
                  ),
                  desktop: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        "PETIAN",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      WebMenu(),
                      Spacer(),
                      IconCard(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SearchBar(),
                SizedBox(
                  height: 50,
                ),
                ResponsiveWidget(
                  mobile: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "High-quality products\nfor your pets",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        "assets/images/dog banner.png",
                        height: 260,
                        width: 260,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      BrowserButton(),
                    ],
                  ),
                  desktop: Row(
                    children: [
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "High-quality\nproducts for\nyour pets",
                            style: TextStyle(
                                height: 1.5,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          BrowserButton()
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/dog banner.png",
                            height: 260,
                            width: 260,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
