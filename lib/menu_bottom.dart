import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({
    super.key,
  });

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
        switch(index){
          case 0:
            Navigator.pushNamed(context,"/log");
            break;
          case 1:
          Navigator.pushNamed(context,"/home");
            break;
          case 2:
            Navigator.pushNamed(context,"/report");
            break;
        }
      }
    
    );
  }
}