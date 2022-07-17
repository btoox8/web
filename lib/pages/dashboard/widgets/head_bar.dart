import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_app/controls/menu_controller.dart';
import 'package:web_app/pages/dashboard/widgets/my_nav_icon.dart';
import 'package:web_app/shared/app_colors.dart';
import 'package:web_app/shared/app_responsive.dart';

/*
  * building your widget inside class
*/
class HeadBar extends StatefulWidget {
  // HeadBar({Key? key}) : super(key: key);

  @override
  State<HeadBar> createState() => _HeadBarState();
}

class _HeadBarState extends State<HeadBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          // we add drawer icon with function
          // becareful with provider syntax as function no (){}
          if (!AppResponsive.isDesktop(context))
            IconButton(
                onPressed: Provider.of<MenuController>(context, listen: false)
                    .controlMenu,
                icon: Icon(
                  Icons.menu,
                  color: AppColor.bgSideMenu,
                )),
          Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Row(
            children: [
              //
              MyNavIcon(icon: Icons.search),
              MyNavIcon(icon: Icons.send),
              MyNavIcon(icon: Icons.notifications),
            ],
          )
        ],
      ),
    );
  }

  // we suffer from error
  // NavIcon(
  //   icon: Icon(Icons.search),
  // ),
  // Building Widgit inside class
  // we don't use this, because it dynamic

  // Widget NavIcon({icon}) {
  //   return Icon(
  //     icon,
  //     color: AppColor.white,
  //   ); // don't forget ;
  // }
}
