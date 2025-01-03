import 'package:ammasevasadanam_app/animations/swipe_animations/arrow_animation.dart';
import 'package:ammasevasadanam_app/main.dart';
import 'package:flutter/material.dart';

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
        //drawer: const NavBar(),
        appBar: genAppBar(context),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Stack(
              children: [genArrowAnims(context)],
            ),
          ),
        ));
  }

  AppBar genAppBar(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text('How to use the app'),
                        content: const Text(
                            '''This application is meant to be used for logging expenses and donations. To log, please go to the log page to the left. If you would like to see and edit data and statistics, you will need a password. The statistics page is to the right. The log page is to the left.'''),
                        actions: [
                          TextButton(
                            child: const Text("OK"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ));
            },
            icon: const Icon(Icons.info)),
        PopupMenuButton(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) =>
                [const PopupMenuItem<int>(value: 0, child: Text('Log Out'))],
            icon: const Icon(Icons.settings)),
      ],
      leading: Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            width: 50,
            height: 40,
            child: FittedBox(
                fit: BoxFit.fill,
                child: Switch(
                    value: themeManager.themeMode == ThemeMode.dark,
                    onChanged: (newValue) {
                      themeManager.toggleTheme(newValue);
                    })),
          )),
    );
  }

  Widget genArrowAnims(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 1000, 50, 50),
            child: Column(
              children: [
                Text('Swipe Left',
                    style: Theme.of(context).textTheme.bodyMedium),
                const ArrowAnimation(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 1000, 50, 50),
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

  onSelected(BuildContext context, int item) {}
}
