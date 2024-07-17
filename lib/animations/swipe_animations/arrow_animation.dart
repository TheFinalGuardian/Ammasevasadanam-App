import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget arrowAnim() {
  return Row(
    children: List<Widget>.generate(
      4,
      (int i) => ColorFiltered(
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.modulate),
          child: SvgPicture.asset('images/arrow.svg')),
      growable: true,
    ).animate(interval: 400.ms).fade().reversed.toList(),
  );
}
