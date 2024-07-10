import 'package:ammasevasadanam_app/home_page.dart';
<<<<<<< HEAD
//Delete before commit
import 'package:ammasevasadanam_app/screens_place_holder/home_page_place_holder.dart';
import 'package:ammasevasadanam_app/screens_place_holder/log_page_place_holder.dart';
import 'package:ammasevasadanam_app/screens_place_holder/report_page_place_holder.dart';
//
=======
import 'package:ammasevasadanam_app/screens_place_holder/log_page_place_holder.dart';
import 'package:ammasevasadanam_app/screens_place_holder/report_page_place_holder.dart';
>>>>>>> 12efad591ceba6297ace5bcb3218a91bed637eaa
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
  return MaterialApp(
    home: HomePagePlaceHolder(),
    routes: {
      "/log": (context) => LogPagePlaceHolder(),
      "/home": (context) => HomePagePlaceHolder(),
      "/report": (context) => ReportPagePlaceHolder(),
    },
  );
=======
    return MaterialApp(
      home: HomePage(),
      routes: {
        "/log": (context) => LogPagePlaceHolder(),
        "/home": (context) => HomePage(),
        "/report": (context) => ReportPagePlaceHolder(),
      },
    );
  }
>>>>>>> 12efad591ceba6297ace5bcb3218a91bed637eaa
}
