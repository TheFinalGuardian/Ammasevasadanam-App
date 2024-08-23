import 'package:flutter/material.dart';

const List<String> typeOfCategory = <String>[
  'Rent',
  'Provisions',
  'Vegetables',
  'SBI -33480143480'
];

// ignore: must_be_immutable
class Group extends StatefulWidget {
  String? type;
  Group({super.key, this.type});
  String getCategoryType() => type ?? typeOfCategory.first;

  @override
  State<Group> createState() => _CategoryState();
}

class _CategoryState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: initialSelection(widget.type),
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          widget.type = value!;
        });
      },
      dropdownMenuEntries:
          typeOfCategory.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }

  String initialSelection(String? type) {
    return widget.type ?? typeOfCategory.first;
  }
}
