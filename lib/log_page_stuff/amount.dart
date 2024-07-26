import 'package:flutter/material.dart';

class Amount extends StatefulWidget {
  String cost;
   Amount({super.key, required this.cost});

  @override
  State<Amount> createState() => _AmountState();
}

class _AmountState extends State<Amount> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: InitialAmount(widget.cost),
        ),
      ),
    );
  }
  String InitialAmount(String cost){
    if (widget.cost != "") {
        return widget.cost;
      } else {
        return 'Amount';
      }
  }
}
