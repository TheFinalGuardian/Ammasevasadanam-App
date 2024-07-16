import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: const Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Text(
                  """    This application is meant to be used for logging expenses and donations. Admins will be able to see statistics using a password. """),
              Text("To navigate between pages:"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("SWIPE RIGHT"),
                      Placeholder()
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const MenuBottom(),
        );
  }
}