import 'package:ammasevasadanam_app/animations/transition_animation_folder/right_to_left.dart';
import 'package:ammasevasadanam_app/home_page.dart';
import 'package:ammasevasadanam_app/pages_with_swipe_animation/home_page_with_animation.dart';
import 'package:ammasevasadanam_app/place_holders/log_page_place_holder_folder/log_page_place_holder.dart';
import 'package:flutter/material.dart';

class LogPageWithAnimation extends StatelessWidget {
  const LogPageWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const LogPage(),
      onHorizontalDragUpdate: (details){
        int sensitivity = 6;
        if (details.delta.dx < -sensitivity) {
            Navigator.of(context).pushReplacement(rightToLeft(const HomePageWithAnimation()));
        }
      },
      );
  }
}