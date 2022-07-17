import 'package:flutter/material.dart';
import 'package:web_app/shared/app_colors.dart';

class MyNavIcon extends StatelessWidget {
  MyNavIcon({this.icon});
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: AppColor.black,
      ),
    );
  }
}
