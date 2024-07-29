
import 'package:flutter/material.dart';

const List<String> Type = <String>["Payment", "Contra"];
String VchVal = '';

class VchType extends StatefulWidget {
  String? VCH;
   VchType({super.key, this.VCH});
   String getVchType(){
    return VchVal;
   }

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
        setState(() {
          widget.VCH = value;
          VchVal = value!;
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
