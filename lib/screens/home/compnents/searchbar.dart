import 'package:flutter/material.dart';

import '../../../contants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50.0)),
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: "What are you looking for?",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w500, color: kTextColor)),
            ),
          ),
        )
      ],
    );
  }
}
