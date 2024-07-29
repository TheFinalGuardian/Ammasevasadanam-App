import 'package:flutter/material.dart';

class VchNum extends StatefulWidget {
  String? VCHNUM;
  VchNum({super.key, this.VCHNUM});

 String getVchText(){
    String n = VchControl.text;
    VchControl.clear();
    return n;
  }
  @override
  State<VchNum> createState() => _VchNumState();
}

TextEditingController VchControl = TextEditingController();

class _VchNumState extends State<VchNum> {
  @override
  Widget build(BuildContext context) {
    String InitialVCHNum(String? VCHNUM){
    if (VCHNUM != null) {
        return VCHNUM;
      } else {
        return 'VCH No.';
      }
  }
    return SizedBox(
      width: 100,
      child: TextField(
        controller: VchControl,
        obscureText: false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: InitialVCHNum(widget.VCHNUM),
        ),
      ),
    );
  }
}
  