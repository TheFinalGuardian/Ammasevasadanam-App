import 'package:ammasevasadanam_app/animations/swipe_animations/swipe_pages/swipe_home_page.dart';
import 'package:ammasevasadanam_app/animations/transition_animation_folder/right_to_left.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page_no_scroll.dart';
import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:flutter/material.dart';

class LogPageWithAnimation extends StatelessWidget {
  const LogPageWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const LogPageNoScroll(),
      onHorizontalDragUpdate: (details) {
        int sensitivity = 6;
        if (details.delta.dx < -sensitivity) {
          Navigator.of(context)
              .pushReplacement(rightToLeft(const HomePageWithAnimation()));
          track = 1;
        }
      },
    );
  }
}
