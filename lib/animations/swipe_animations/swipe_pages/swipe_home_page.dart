import 'package:ammasevasadanam_app/animations/transition_animation_folder/left_to_right.dart';
import 'package:ammasevasadanam_app/animations/transition_animation_folder/right_to_left.dart';
import 'package:ammasevasadanam_app/home_page.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/swipe_pages/swipe_log_page.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/swipe_pages/swipe_report_page.dart';
import 'package:flutter/material.dart';

class HomePageWithAnimation extends StatelessWidget {
  const HomePageWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const HomePage(),
      onHorizontalDragUpdate: (details){
        int sensitivity = 6;
        if (details.delta.dx < -sensitivity) {
            Navigator.of(context).pushReplacement(rightToLeft(const ReportPageWithAnimation()));
        }
        if(details.delta.dx > sensitivity){
          Navigator.of(context).pushReplacement(leftToRight(const LogPageWithAnimation()));
        }
      },

      );
  }
}