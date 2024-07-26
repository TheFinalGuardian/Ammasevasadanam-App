import 'package:ammasevasadanam_app/animations/swipe_animations/swipe_pages/swipe_home_page.dart';
import 'package:ammasevasadanam_app/animations/transition_animation_folder/left_to_right.dart';
import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:ammasevasadanam_app/report_page_stuff/report_page.dart';
import 'package:flutter/material.dart';
/*
class ReportPageWithAnimation extends StatelessWidget {
  const ReportPageWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const ReportPage(),
      onHorizontalDragUpdate: (details) {
        int sensitivity = 6;
        if (details.delta.dx > sensitivity) {
          Navigator.of(context)
              .pushReplacement(leftToRight(const HomePageWithAnimation()));
          track = 1;
        }
      },
    );
  }
}
*/