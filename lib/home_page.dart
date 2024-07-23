import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:flutter/material.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/arrow_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: genAppBar(),
      body: Column(
        children: [
          genInstructions(),
          genArrowAnims(),
        ],
      ),
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
          """    This application is meant to be used for logging expenses and donations. To log, please go to the log page to the left. If you would like to see and edit data and statistics, you will need a password.The statistics page is to the right."""),
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
