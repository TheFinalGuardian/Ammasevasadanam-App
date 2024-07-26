import 'package:flutter/material.dart';

const List<String> Type = <String>["Payment", "Contra"];

class VchType extends StatefulWidget {
  String VCH;
   VchType({super.key, required this.VCH});

  @override
  State<VchType> createState() => _VchTypeState();
}

class _VchTypeState extends State<VchType> {
  String vchSelect = Type.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: firstVCH(widget.VCH),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          vchSelect = value!;
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
}

String firstVCH(String type){
    if(type != ""){
      if(type == Type.first){
        return Type.first;
      }
        return Type[1];        
    }
  return Type[1];       
}