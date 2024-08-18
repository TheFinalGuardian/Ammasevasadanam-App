import 'package:flutter/material.dart';

int track = 1;

class MenuBottom extends StatefulWidget {
  const MenuBottom({
    super.key,
  });

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: "Log",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart),
            label: "Report",
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              if ((track == 1) || (track == 2)) {}
              break;

            case 1:
              if (track == 0) {}
              if (track == 2) {}
              break;

            case 2:
              if ((track == 0) || (track == 1)) {}
              break;
          }
        }

        /*
        onTap: (int index) {
          switch (index) {
            case 0:
              if ((track == 1) || (track == 2)) {
                Navigator.of(context).pushReplacement(leftToRight(const LogPageWithAnimation()));
                setState(() {
                  track = 0;
                });
              }
              break;

            case 1:
              if (track == 0) {
                Navigator.of(context).pushReplacement(rightToLeft(const HomePageWithAnimation()));
                setState(() {
                  track = 1;
                });
              }
              if (track == 2) {
                Navigator.of(context).pushReplacement(leftToRight(const HomePageWithAnimation()));
                setState(() {
                  track = 1;
                });
              }
              break;

            case 2:
              if ((track == 0) || (track == 1)) {
                Navigator.of(context).pushReplacement(rightToLeft(const ReportPageWithAnimation()));
                setState(() {
                  track = 2;
                });
              }
              break;
          }

        }*/
        );
  }
}
