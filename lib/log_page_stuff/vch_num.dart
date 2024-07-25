import 'package:flutter/material.dart';

class VchNum extends StatelessWidget {
  const VchNum({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'VCH No.',
        ),
      ),
    );
  }
}
