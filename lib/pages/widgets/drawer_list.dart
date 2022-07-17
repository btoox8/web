// building our DrawerList by using ListTile
import 'package:flutter/material.dart';
import 'package:web_app/shared/app_colors.dart';

class DrawerList extends StatelessWidget {
  const DrawerList(
      // it appear according order here
      {super.key,
      required this.title,
      required this.icon,
      this.press});

// we need image/icon on start, text, some times icon on list
  final String title, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading == what come first
      // also has onTap to call function when press on certain item

      // control space between leading & title. [image place from text]
      horizontalTitleGap: 0,
      leading: Image.asset(
        // icon here just name of image path not Icon widget
        icon,
        // I need modify its color & size
        color: AppColor.white,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColor.white),
      ),
      onTap: press,
    );
  }
}
