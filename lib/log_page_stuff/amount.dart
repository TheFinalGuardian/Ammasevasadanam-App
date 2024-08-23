import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Amount extends StatefulWidget {
  int? cost;
  Amount({super.key, this.cost});

  int getAmount() {
    int t = int.parse(amountControl.text);
    return t;
  }

  void clear() => amountControl.clear();

  @override
  State<Amount> createState() => _AmountState();
}

TextEditingController amountControl = TextEditingController();

class _AmountState extends State<Amount> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: TextField(
        controller: amountControl,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: initialAmount(widget.cost),
        ),
      ),
    );
  }

  String initialAmount(int? cost) {
    if (cost != null) {
      return "$cost";
    } else {
      return 'Amount';
    }
  }
}
