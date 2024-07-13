import 'package:ammasevasadanam_app/home_page.dart';
import 'package:ammasevasadanam_app/home_page_place_holder.dart';
import 'package:ammasevasadanam_app/screens_place_holder/log_page_place_holder_folder/log_page_place_holder.dart';
import 'package:ammasevasadanam_app/screens_place_holder/report_page_place_holder.dart';
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
        "/home": (context) => HomePage(),
        "/report": (context) => ReportPagePlaceHolder(),
      },
    );
  }
}
