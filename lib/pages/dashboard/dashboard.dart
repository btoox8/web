import 'package:flutter/material.dart';
import 'package:web_app/pages/dashboard/widgets/calendar_widget.dart';
import 'package:web_app/pages/dashboard/widgets/head_bar.dart';
import 'package:web_app/pages/dashboard/widgets/notification.dart';
import 'package:web_app/pages/dashboard/widgets/profile.dart';
import 'package:web_app/pages/dashboard/widgets/table_of_emp_data.dart';
import 'package:web_app/shared/app_colors.dart';
import 'package:web_app/shared/app_responsive.dart';

class Dashboard extends StatefulWidget {
  // Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      // add HeadBar
      child: Column(
        children: [
          HeadBar(),
          Expanded(
            // solve row size problem with
            // SingleChildScrollView
            child: SingleChildScrollView(
              child: Row(
                // it move our calender to top not middel
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          MyNotification(),
                          SizedBox(
                            height: 10,
                          ),
                          // using Responive here
                          // bring calendar & profile
                          // method error == use ... on it
                          // if()...{},
                          // simple way? if its mobile do this if not do that
                          if (AppResponsive.isMobile(context)) ...{
                            MyCalendar(),
                            SizedBox(
                              height: 20,
                            ),
                          },

                          TableOfEmpData(),
                          SizedBox(
                            height: 10,
                          ),
                          if (AppResponsive.isMobile(context)) Profile(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // if not mobile
                  if (!AppResponsive.isMobile(context)) ...{
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Column(
                          children: [
                            MyCalendar(),
                            SizedBox(
                              height: 20,
                            ),
                            Profile(),
                          ],
                        ),
                      ),
                    ),
                  },
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


