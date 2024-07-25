import 'package:flutter/material.dart';

class Amount extends StatefulWidget {
  const Amount({super.key});

  @override
  State<Amount> createState() => _AmountState();
}

class _AmountState extends State<Amount> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Amount',
        ),
      ),
    );
  }
}
