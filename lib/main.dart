import 'package:ammasevasadanam_app/animations/swipe_animations/swipe_pages/swipe_log_page.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/swipe_pages/swipe_report_page.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/swipe_pages/swipe_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePageWithAnimation(),
      routes: {
        "/log": (context) => const LogPageWithAnimation(),
        "/home": (context) => const HomePageWithAnimation(),
        "/report": (context) => const ReportPageWithAnimation(),
      },
    );
  }
}
