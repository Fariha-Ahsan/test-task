import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search in Swipexyz",
        hintStyle: TextStyle(color: Color(0xff94959d)),
        prefixIcon: Icon(Icons.search, color: Color(0xff94959d), size: 30.0),
        //disabledBorder:InputBorder.none,
        border: InputBorder.none,
        fillColor: Colors.white,
      ),
    );
  }
}