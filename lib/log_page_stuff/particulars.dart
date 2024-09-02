// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Particulars extends StatefulWidget {
  String? title;
  Particulars({super.key, this.title});

  String getParticularsText() {
    String p = particularsControl.text;
    return p;
  }

  void clear() => particularsControl.clear();

  @override
  State<Particulars> createState() => ParticularsState();
}

TextEditingController particularsControl = TextEditingController();

class ParticularsState extends State<Particulars> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: null,
      width: 300,
      child: TextField(
        controller: particularsControl,
        obscureText: false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: initialTitle(widget.title),
        ),
      ),
    );
  }
}

String initialTitle(String? title) {
  if (title != null) {
    return title;
  } else {
    return 'Title';
  }
}
