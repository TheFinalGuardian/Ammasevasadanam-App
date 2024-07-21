import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:flutter/material.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/arrow_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width - MediaQuery.of(context).padding.horizontal;
    double height = MediaQuery.sizeOf(context).height - MediaQuery.of(context).padding.vertical;

    return Scaffold(
      appBar: genAppBar(),
      body: Center(
        child: SizedBox(
          width: width,
          height: height,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                genInstructions(),
                genArrowAnims(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MenuBottom(),
    );
  }

  AppBar genAppBar() {
    return AppBar(
      title: const Center(
        child: Text('Ammasevasadanam'),
      ),
    );
  }

  Widget genInstructions() {
    return const Column(children: [
      Text(
          """    This application is meant to be used for logging expenses and donations. To log, please go to the log page to the left. If you would like to see and edit data and statistics, you will need a password. The statistics page is to the right. The logging page is to the left."""),
      Text("To navigate between pages:"),
    ]);
  }

  Widget genArrowAnims() {
    return FittedBox(
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                Text("SWIPE LEFT"),
                ArrowAnimation(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                const Text("SWIPE RIGHT"),
                Transform.scale(scaleX: -1, child: const ArrowAnimation()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
