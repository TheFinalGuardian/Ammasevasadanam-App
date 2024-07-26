import 'package:flutter/material.dart';

class VchNum extends StatefulWidget {
  String VCHNUM;
  VchNum({super.key, required this.VCHNUM});

  @override
  State<VchNum> createState() => _VchNumState();
}

class _VchNumState extends State<VchNum> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: InitialVCHNum(widget.VCHNUM),
        ),
      ),
    );
  }
}

String InitialVCHNum(String VCHNUM){
    if (VCHNUM != "") {
        return VCHNUM;
      } else {
        return 'VCH No.';
      }
  }