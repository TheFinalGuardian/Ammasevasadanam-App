
import 'package:ammasevasadanam_app/home_page.dart';
//Delete before commit
import 'package:ammasevasadanam_app/screens/home_page_place_holder.dart';
import 'package:ammasevasadanam_app/screens/log_page.dart';
import 'package:ammasevasadanam_app/screens/report_page.dart';
//
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: HomePagePlaceHolder(),
    routes: {
      "/log": (context) => LogPage(),
      "/home": (context) => HomePagePlaceHolder(),
      "/report": (context) => ReportPage(),
    },
  );
}

}