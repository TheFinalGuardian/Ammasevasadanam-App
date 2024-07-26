import 'package:flutter/material.dart';

class Particulars extends StatefulWidget {
  String Title;
  Particulars({super.key, required this.Title});

  @override
  State<Particulars> createState() => ParticularsState();
}

class ParticularsState extends State<Particulars> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: null,
      width: 300,
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: InitialTitle(widget.Title),
        ),
      ),
    );
  }
}

String InitialTitle(String Title){
    if (Title != '') {
        return Title;
      } else {
        return 'Title';
      }
  }