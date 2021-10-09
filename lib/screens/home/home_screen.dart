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
