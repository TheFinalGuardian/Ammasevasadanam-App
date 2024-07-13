import 'package:flutter/material.dart';
const List<String> Type = <String>["Payment", "Contra"];

class VchType extends StatefulWidget {
  const VchType({super.key});

  @override
  State<VchType> createState() => _VchTypeState();
}

class _VchTypeState extends State<VchType> {
  String VCHSelect = Type.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: VCHSelect,
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          VCHSelect = value!;
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