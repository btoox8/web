import 'package:flutter/material.dart';
import 'package:web_app/pages/dashboard/widgets/emplyee_tasks.dart';
import 'package:web_app/shared/app_colors.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  'assets/user2.jpg',
                  height: 60,
                  width: 60,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    'M.Elrayah',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Programmer',
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          EmployeTasks(text: 'task1', value: 'C#'),
          EmployeTasks(text: 'task1', value: 'C#'),
          EmployeTasks(text: 'task1', value: 'C#'),
        ],
      ),
    );
  }
}
