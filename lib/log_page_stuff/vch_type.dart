import 'package:flutter/material.dart';

// @TODO: convert list to enum

const List<String> TYPE = <String>["Payment", "Contra"];

// ignore: must_be_immutable
class VchType extends StatefulWidget {
  String? vchType;
  VchType({super.key, this.vchType = "Payment"});
  String getVchType() {
    return vchType ?? TYPE.first;
  }

  @override
  State<VchType> createState() => _VchTypeState();
}

class _VchTypeState extends State<VchType> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: firstVCH(widget.vchType),
      onChanged: (String? value) {
        setState(() {
          widget.vchType = value;
        });
      },
      items: TYPE.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  String firstVCH(String? type) {
    if (type != null) {
      if (type == TYPE.first) {
        return TYPE.first;
      }
      return TYPE[1];
    }
    return TYPE[1];
  }
}
