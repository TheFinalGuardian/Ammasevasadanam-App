import 'package:ammasevasadanam_app/animations/transition_animation_folder/left_to_right.dart';
import 'package:ammasevasadanam_app/pages_with_swipe_animation/home_page_with_animation.dart';
import 'package:ammasevasadanam_app/place_holders/report_page_place_holder.dart';
import 'package:flutter/material.dart';

class ReportPageWithAnimation extends StatelessWidget {
  const ReportPageWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const ReportPagePlaceHolder(),
      onHorizontalDragUpdate: (details){
        int sensitivity = 6;
        if (details.delta.dx > sensitivity) {
            Navigator.of(context).pushReplacement(leftToRight(const HomePageWithAnimation()));
        }
      },
      );
  }
}