// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Particulars extends StatefulWidget {
  String? title;
  Particulars({super.key, this.title});

  String getParticularsText(){
    String p = particularsControl.text;
    particularsControl.clear();
    return p;
  }

  String getParticularsTest(){
    return particularsControl.text;
  }

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
      child: TextFormField(
        controller: particularsControl..text = setInitialTitle(widget.title),
        obscureText: false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: initialTitle(widget.title),
        ),
      ),
    );
  }


String initialTitle(String? title){
    return 'Title';
  }

 String setInitialTitle(String? title){
    if (title != null) {
        return title;
      } else {
        return '';
      }
    }
}