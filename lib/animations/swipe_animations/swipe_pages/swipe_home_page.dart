/*
class HomePageWithAnimation extends StatelessWidget {
  const HomePageWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const HomePage(),
      onHorizontalDragUpdate: (details) {
        int sensitivity = 6;
        if (details.delta.dx < -sensitivity) {
          Navigator.of(context)
              .pushReplacement(rightToLeft(const ReportPageWithAnimation()));
          track = 2;
        }
        if (details.delta.dx > sensitivity) {
          Navigator.of(context)
              .pushReplacement(leftToRight(const LogPageWithAnimation()));
          track = 0;
        }
      },
    );
  }
}
*/
