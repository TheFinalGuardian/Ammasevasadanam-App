/*
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
*/