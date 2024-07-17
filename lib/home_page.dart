import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:flutter/material.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/arrow_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: genAppBar(),
      body: Column(
        children: [
          genInstructions(),
          genArrowAnims(),
        ],
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
          """    This application is meant to be used for logging expenses and donations. Admins will be able to see statistics using a password. """),
      Text("To navigate between pages:"),
    ]);
  }

  Widget genArrowAnims() {
    return FittedBox(
      child: Row(
        children: [
          Column(
            children: [
              const Text("SWIPE LEFT"),
              arrowAnim(),
            ],
          ),
          Column(
            children: [
              const Text("SWIPE RIGHT"),
              Transform.scale(scaleX: -1, child: arrowAnim()),
            ],
          ),
        ],
      ),
    );
  }
}
