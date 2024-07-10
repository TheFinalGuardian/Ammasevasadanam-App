import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Report Page"),
      ),
      bottomNavigationBar: const MenuBottom(),
    );
  }
}