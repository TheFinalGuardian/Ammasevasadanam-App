import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:flutter/material.dart';

class LogPagePlaceHolder extends StatelessWidget {
  const LogPagePlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log Page"),
      ),
      bottomNavigationBar: const MenuBottom(),
    );
  }
}
