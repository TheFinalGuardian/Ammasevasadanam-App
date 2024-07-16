import 'package:flutter/material.dart';
const List<String> Type = <String>["Payment", "Contra"];

class VchType extends StatefulWidget {
  const VchType({super.key});

  @override
  State<VchType> createState() => _VchTypeState();
}

class _VchTypeState extends State<VchType> {
  String vchSelect = Type.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: vchSelect,
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