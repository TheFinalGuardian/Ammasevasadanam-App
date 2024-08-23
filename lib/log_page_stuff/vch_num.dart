// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class VchNum extends StatefulWidget {
  int? vchNumber;
  VchNum({super.key, this.vchNumber});

  int getVchNum() {
    int n = int.parse(vchControl.text);
    return n;
  }

  void clear() => vchControl.clear();

  @override
  State<VchNum> createState() => _VchNumState();
}

TextEditingController vchControl = TextEditingController();

class _VchNumState extends State<VchNum> {
  @override
  Widget build(BuildContext context) {
    String initialVCHNum(int? vchNum) {
      if (vchNum != null) {
        return "$vchNum";
      } else {
        return 'VCH No.';
      }
    }

    return SizedBox(
      width: 100,
      child: TextField(
        controller: vchControl,
        obscureText: false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: initialVCHNum(widget.vchNumber),
        ),
      ),
    );
  }
}
