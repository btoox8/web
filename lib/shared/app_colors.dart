import 'package:flutter/material.dart';

// I can make colors as const and called them by name or
// as  static so we call them by ClassName.colorname

// it's a class
// htmlcolorcodes.com  == color codes choose, also has picker
class AppColor {
  // it static, if const start with k
  static Color mainColor = Color(0xff48c9f3);
  static Color bgColor = Color(0xffeef7fa);
  static Color bgSideMenu = Color(0xff1a2b30);

  // also we can use main colors with names:

  static Color white = Colors.white;
  static Color black = Colors.black;
}
