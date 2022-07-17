import 'package:flutter/material.dart';
import 'package:web_app/shared/app_colors.dart';

class EmployeTasks extends StatelessWidget {
  EmployeTasks({this.text, this.value});
  String? text, value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
          ),
          Text(
            value!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
