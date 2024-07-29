import 'package:flutter/material.dart';

class Amount extends StatefulWidget {
  String? cost;
  Amount({super.key, this.cost});

  String getAmountText(){
    String t = amountControl.text;
    amountControl.clear();
    return t;
  }
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
        labelText: InitialAmount(widget.cost),
        ),
      ),
    );
  }
  String InitialAmount(String? cost){
    if (cost != null) {
        return cost;
      } else {
        return 'Amount';
      }
  }
}


