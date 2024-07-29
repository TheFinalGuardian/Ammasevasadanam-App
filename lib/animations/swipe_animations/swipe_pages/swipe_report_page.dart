/*
class ReportPageWithAnimation extends StatelessWidget {
  const ReportPageWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const ReportPage(),
      onHorizontalDragUpdate: (details) {
        int sensitivity = 6;
        if (details.delta.dx > sensitivity) {
          Navigator.of(context)
              .pushReplacement(leftToRight(const HomePageWithAnimation()));
          track = 1;
        }
      },
    );
  }
}
*/