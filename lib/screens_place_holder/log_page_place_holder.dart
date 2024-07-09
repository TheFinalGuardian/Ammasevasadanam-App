import 'package:ammasevasadanam_app/menu_bottom';
import 'package:flutter/material.dart';

class LogPage extends StatelessWidget {
  const LogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log Page"),
      ),
      bottomNavigationBar: MenuBottom(),
    );
  }
}
