import 'package:flutter/material.dart';

class Particulars extends StatefulWidget {
  const Particulars({super.key});

  @override
  State<Particulars> createState() => ParticularsState();
}

class ParticularsState extends State<Particulars> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: null,
      width: 300,
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Particulars',
        ),
      ),
    );
  }
}