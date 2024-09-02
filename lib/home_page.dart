import 'package:ammasevasadanam_app/Themes/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/arrow_animation.dart';
import 'package:ammasevasadanam_app/main.dart';
import 'package:ammasevasadanam_app/nav_bar.dart';

String bullet = "\u2022 ";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: genAppBar(context),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  genInstructions(context),
                  genArrowAnims(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar genAppBar(BuildContext context) {
    return AppBar(
        title: Center(
          child: Text(
            'Welcome',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        actions: [
          Switch(
              value: themeManager.themeMode == ThemeMode.dark,
              onChanged: (newValue) {
                themeManager.toggleTheme(newValue);
              })
        ]);
  }

  Widget genInstructions(BuildContext context) {
    return Column(children: [
      Text(
          '''    This application is meant to be used for logging expenses and donations. To log, please go to the log page to the left. If you would like to see and edit data and statistics, you will need a password. The statistics page is to the right. The log page is to the left.''',
          style: Theme.of(context).textTheme.bodyMedium),
      Text('To navigate between pages:',
          style: Theme.of(context).textTheme.bodyMedium),
    ]);
  }

  Widget genArrowAnims(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                Text('SWIPE LEFT',
                    style: Theme.of(context).textTheme.bodyMedium),
                const ArrowAnimation(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),  
            child: Column(
              children: [
                Text('SWIPE RIGHT',
                    style: Theme.of(context).textTheme.bodyMedium),
                Transform.scale(scaleX: -1, child: const ArrowAnimation()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
