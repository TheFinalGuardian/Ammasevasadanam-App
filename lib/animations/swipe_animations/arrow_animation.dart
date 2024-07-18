import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArrowAnimation extends StatefulWidget {
  const ArrowAnimation({super.key});

  @override
  State<ArrowAnimation> createState() => _ArrowAnimationState();
}

class _ArrowAnimationState extends State<ArrowAnimation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.generate(
        4,
        (int i) => ColorFiltered(
            colorFilter:
                const ColorFilter.mode(Colors.black, BlendMode.modulate),
            child: SvgPicture.asset('images/arrow.svg')),
        growable: true,
      ).animate(interval: 100.ms).fade(),
    );
  }
}