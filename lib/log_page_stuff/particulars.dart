import 'package:flutter/material.dart';

class Particulars extends StatefulWidget {
  String? Title;
  Particulars({super.key, this.Title});

  String getParticularsText(){
    String p = ParticularsControl.text;
    ParticularsControl.clear();
    return p;
  }

  @override
  State<Particulars> createState() => ParticularsState();
}

TextEditingController ParticularsControl = TextEditingController();
class ParticularsState extends State<Particulars> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: null,
      width: 300,
      child: TextField(
        controller: ParticularsControl,
        obscureText: false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: InitialTitle(widget.Title),
        ),
      ),
    );
  }
}

String InitialTitle(String? Title){
    if (Title != null) {
        return Title;
      } else {
        return 'Title';
      }
  }

 