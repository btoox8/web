import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:web_app/controls/menu_controller.dart';
import 'package:web_app/pages/home_page.dart';

/*
  * there able to convert dart to Js.
  * https://gallery.flutter.dev/
  * web setup: <pachages>
      - google_fonts: ^2.0.0
      - table_calendar: ^3.0.0
      - provider: ^5.0.0
      - on yamel : if not write your version, it written automatically to last one
  * Notes:
      - to make folder on main path press on pub then create folder.
      - we need google chrom
      - f12 on chrom to see page inspection, it convert flutter to <html, css, js>
      - matrial.dart ==  explain better on material.io
      - google use multiple libraries to improve performance & decrase space
      - imagin your page is table
      - divide UI to Columns & Rows
  * flutter note pad ep 55, to use flutter from mobile
  * Extensions:
      - flutter, dart, flutter widget snippets, dart(syntax highlighting only)
*/

// our starting method == start point for your app
void main() {
  runApp(const Web());
}

class Web extends StatelessWidget {
  const Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Webssite Demo',
      theme: ThemeData.dark().copyWith(
        // it use fonts by smart way
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      // using provider
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuController()),
        ],
        child: HomePage(),
      ),
    );
  }
}
