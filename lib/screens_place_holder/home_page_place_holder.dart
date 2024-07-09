import 'package:ammasevasadanam_app/menu_bottom';
import 'package:flutter/material.dart';

class HomePagePlaceHolder extends StatelessWidget {
  const HomePagePlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      bottomNavigationBar: MenuBottom(),
    );
  }
  }

