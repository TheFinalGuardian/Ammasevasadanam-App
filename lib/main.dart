import 'package:ammasevasadanam_app/home_page.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:ammasevasadanam_app/place_holders/report_page_place_holder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        "/log": (context) => const LogPage(),
        "/home": (context) => const HomePage(),
        "/report": (context) => const ReportPagePlaceHolder(),
      },
    );
  
  }
  
}
