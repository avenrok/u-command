import 'dart:ffi';
import 'package:flutter/material.dart';

class HeadingStyleFont{
  String text = '';
  Bool softWrap = false as Bool;
  static const TextStyle style =  TextStyle(
    color:  Color.fromARGB(255, 0, 0, 0),
    fontFamily: 'Montserrat-Light',
    fontSize: 20,
    fontWeight: FontWeight.normal
  );
 HeadingStyleFont(this.text);
}

class TextStyleFont{
  String text = '';
  int maxLines = 2;
  TextAlign textAlign = TextAlign.left;
   static const TextStyle style =  TextStyle(
    color:  Color.fromARGB(255, 0, 0, 0),
    fontFamily: 'Montserrat-Light',
    fontSize: 15,
    fontWeight: FontWeight.normal
  );
  TextStyleFont(this.text);
}

class ButtonStyleFont{
  String text = '';
  Bool softWrap = false as Bool;
  TextAlign textAlign = TextAlign.center;
   static const TextStyle style =  TextStyle(
    color:  Color.fromRGBO(195, 207, 223, 1),
    fontFamily: 'Montserrat-Light',
    fontSize: 16,
    fontWeight: FontWeight.normal
  );
 ButtonStyleFont(this.text);
}