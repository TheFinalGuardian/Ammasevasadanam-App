import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Example'),
            accountEmail: const Text('Example@gmail.com'),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
                    child: Image.asset(
              'images/generic_profile_picture.jpg',
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ))),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('images/ammasevasadanam.webp'),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Information'),
            onTap: () {
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
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Log Out'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

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
