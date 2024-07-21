import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArrowAnimation extends StatefulWidget {
  const ArrowAnimation({super.key});

  @override
  State<ArrowAnimation> createState() => _ArrowAnimationState();
}

class _ArrowAnimationState extends State<ArrowAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  final Duration duration = const Duration(milliseconds: 850);
  late List<Widget> arrows;
  late List<Animation<double>> offsets;
  late final int arrowCount;

  List<Widget> genArrows() {
    return List.generate(arrowCount, (int i) {
      return FadeTransition(
        opacity:
            CurvedAnimation(parent: offsets[i], curve: Curves.easeInOutSine),
        child: SvgPicture.asset(
          'images/arrow.svg',
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.modulate),
        ),
      );
    });
  }

  List<Animation<double>> genOffsets() {
    return List.generate(arrowCount, (int i) {
      return CurvedAnimation(
          parent: controller,
          curve: OffsetLine(offset: i / arrowCount, controller: controller));
    });
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: duration)
      ..repeat(reverse: true);
    arrowCount = 4;
    offsets = genOffsets();
    arrows = genArrows();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: arrows.reversed.toList());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class OffsetLine extends Curve {
  final double offset;
  final AnimationController controller;

  const OffsetLine({this.offset = 0.0, required this.controller});

  @override
  double transformInternal(double t) {
    if (controller.status == AnimationStatus.forward) {
      if (t < offset) {
        return -t + offset;
      } else {
        return t - offset;
      }
    } else {
      if (t > 1 - offset) {
        return -t + 2 - offset;
      } else {
        return t + offset;
      }
    }
  }
}
