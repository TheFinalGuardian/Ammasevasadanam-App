
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
        appBar: AppBar(
          title: const Center(
            child: Column(
              children: [
                Text("Welcome To"),
                Text("Ammasevasadanam"),
              ],
            ),
          ),
        ),
        body: const Column(
          children: [
            Text(
                """    This application is meant to be used for logging expenses and donations. Admins will be able to see statistics using a password. """),
            Text("To navigate between pages:"),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("SWIPE RIGHT"),
                      ArrowAnimation(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const MenuBottom(),
        );
  }
}