import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

class ArrowAnimation extends StatefulWidget {
  const ArrowAnimation({super.key});

  @override
  State<ArrowAnimation> createState() => _ArrowAnimationState();
}

class _ArrowAnimationState extends State<ArrowAnimation> {
  double ratio = 1 / 4;

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
      )
          .animate(interval: .6.seconds)
          .fade(duration: 8000.seconds, curve: const SineCurve(count: 2000))
          .reversed
          .toList(),
    );
  }
}

class SineCurve extends Curve {
  final double count;

  const SineCurve({this.count = 3});

  // t = x
  @override
  double transformInternal(double t) {
    var val = sin(count * 2 * pi * t);
    return val; //f(x)
  }
}
