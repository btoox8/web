import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_app/controls/menu_controller.dart';
import 'package:web_app/pages/dashboard/dashboard.dart';
import 'package:web_app/pages/widgets/side_bar_menu.dart';
import 'package:web_app/shared/app_colors.dart';
import 'package:web_app/shared/app_responsive.dart';

/*
  * using provider
  * hide sidebar & show it by using if condition & provider
*/
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // add drawer & connect it to provider with key

      drawer: SideBar(),
      key: Provider.of<MenuController>(context, listen: false).scaffoldKey,

      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
          // SafeAre == to be alert when your app work with another devices
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // if not desktop size hide sidebar
          // becareful with syntax of if, Expanded just after condition
          if (AppResponsive.isDesktop(context))
            // Side Menu
            Expanded(
              flex: 1,
              child: SideBar(),
            ),

          // Main Body
          Expanded(
            flex: 4,
            child: Dashboard(),
          ),
        ],
      )),
    );
  }
}


/*
  * we divide our page and use Expanded with flex to use ratio
  * use comments before start building to determain main parts
  * I can use color to see the parts, when use uncollred widgets
*/