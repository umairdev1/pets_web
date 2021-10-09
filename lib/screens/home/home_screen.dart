// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pets_web/contants.dart';
import 'package:pets_web/screens/home/compnents/broswer_button.dart';

import 'body/web_body.dart';
import 'compnents/icon_card.dart';
import 'compnents/searchbar.dart';
import 'compnents/webHeader/web_header.dart';
import 'compnents/web_menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.symmetric(horizontal: kDefualtPadding * 2.5),
              child: Center(
                child: Center(
                  child: Text(
                    "PETIAN",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: kButtonColor),
                  ),
                ),
              ),
            ),
            MobMenu(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            WebHeader(),
            //web body//
            WebBody(),
          ],
        ),
      ),
    );
  }
}
