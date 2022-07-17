import 'package:flutter/material.dart';
import 'package:web_app/shared/app_colors.dart';

class TableHeader extends StatelessWidget {
  TableHeader({required this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColor.black,
        ),
      ),
    );
  }
}
