import 'package:flutter/material.dart';
/*
  * ChangeNotifier == tell widget there are modification on state 
    to change according it.
  * we use GlobalKey & ScaffoldState.
  *
*/

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
// call & return
  GlobalKey<ScaffoldState> get scaffoldKey => _globalKey;

  void controlMenu() {
    if (!_globalKey.currentState!.isDrawerOpen) {
      _globalKey.currentState!.openDrawer();
    }
  }
}
