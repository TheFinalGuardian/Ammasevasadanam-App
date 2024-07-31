import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Amount extends StatefulWidget {
  String? cost;
  Amount({super.key, this.cost});

  String getAmountText(){
    String t = amountControl.text;
    amountControl.clear();
    return t;
  }

  String getAmountTest(){
    return amountControl.text;
  }
  
  @override
  State<Amount> createState() => _AmountState();
}

TextEditingController amountControl = TextEditingController();

class _AmountState extends State<Amount> {
  void setToNull(){
    setState(() {
      widget.cost = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: TextField(
        controller: amountControl..text = setInitialAmount(widget.cost),
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: initialAmount(widget.cost),
        ),
      ),
    );
  }
  String initialAmount(String? cost){
      return 'Amount';
  }

  String setInitialAmount(String? cost){
    if (cost != null) {
        return cost;
      } else {
        return '';
      }        
  }
}

