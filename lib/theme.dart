import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
   appBarTheme:appBar()
  );

}
AppBarTheme appBar(){
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,

  );
}