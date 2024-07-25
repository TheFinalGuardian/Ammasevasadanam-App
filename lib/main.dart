import 'package:ammasevasadanam_app/animations/swipe_animations/swipe_pages/swipe_log_page.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/swipe_pages/swipe_report_page.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/swipe_pages/swipe_home_page.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page_no_scroll.dart';
import 'package:ammasevasadanam_app/page_view.dart';
import 'package:ammasevasadanam_app/report_page_stuff/report_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageViewVersion(), 
    );
  }
}
