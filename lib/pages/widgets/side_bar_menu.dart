import 'package:flutter/material.dart';
import 'package:web_app/pages/widgets/drawer_list.dart';
import 'package:web_app/shared/app_colors.dart';

/*
  * restart if Image or other assets not appear!!
*/

class SideBar extends StatefulWidget {
  SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // we wrap it under container to move it without affect our BG
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'MAIN WEB',
                style: TextStyle(
                  color: AppColor.mainColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // DrawerList
            DrawerList(
              title: 'Dashboard',
              icon: 'assets/menu_home.png',
            ),
            DrawerList(
              title: 'Recruitment',
              icon: 'assets/menu_recruitment.png',
            ),
            DrawerList(
              title: 'Onboarding',
              icon: 'assets/menu_onboarding.png',
            ),
            DrawerList(
              title: 'Reports',
              icon: 'assets/menu_report.png',
            ),
            DrawerList(
              title: 'Calender',
              icon: 'assets/menu_calendar.png',
            ),
            DrawerList(
              title: 'Settings',
              icon: 'assets/menu_settings.png',
            ),
            // make space between above and image below
            Spacer(), // it make spaece it it can
            Image.asset('assets/sidebar_image.png')
          ],
        ),
      ),
    );
  }
}
