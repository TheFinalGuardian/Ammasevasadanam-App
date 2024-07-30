
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

const List<String> Type = <String>["Payment", "Contra"];
String vchVal = '';

class VchType extends StatefulWidget {
  String? vchType;
   VchType({super.key, this.vchType});
   String getVchType(){
    return vchVal;
   }

  @override
  State<VchType> createState() => _VchTypeState();
}

class _VchTypeState extends State<VchType> {
  String vchSelect = Type.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: firstVCH(widget.vchType),
      onChanged: (String? value) {
        setState(() {
          widget.vchType = value;
          vchVal = value!;
        });
      },
      items: Type.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  String firstVCH(String? type){
    if(type != null){
      if(type == Type.first){
        return Type.first;
      }
        return Type[1];        
    }
  return Type[1];       
}
}
