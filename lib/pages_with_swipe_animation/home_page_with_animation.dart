import 'package:ammasevasadanam_app/animations/transition_animation_folder/left_to_right.dart';
import 'package:ammasevasadanam_app/animations/transition_animation_folder/right_to_left.dart';
import 'package:ammasevasadanam_app/home_page.dart';
import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:ammasevasadanam_app/pages_with_swipe_animation/log_page_with_animation.dart';
import 'package:ammasevasadanam_app/pages_with_swipe_animation/report_page_with_animation.dart';
import 'package:ammasevasadanam_app/place_holders/report_page_place_holder.dart';
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
            track = 2;
        }
        if(details.delta.dx > sensitivity){
            Navigator.of(context).pushReplacement(leftToRight(const LogPageWithAnimation()));
            track = 0;
        }
      },

      );
  }
}