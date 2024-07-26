import 'package:flutter/material.dart';

const List<String> typeOfCategory = <String>[
  'Rent',
  'Provisions',
  'Vegetables',
  'SBI -33480143480'
];

class Category extends StatefulWidget {
  String type;
  Category({super.key, required this.type});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  String? cSelect;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: InitialSelection(widget.type),
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          cSelect = value!;
        });
      },
      dropdownMenuEntries:
          typeOfCategory.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }

String InitialSelection(String type){
  if (widget.type != '') {
        for (int x = 0; x < typeOfCategory.length; x++){
          if (widget.type == typeOfCategory[x]){
            return typeOfCategory[x];
          }
        }
  }
  return typeOfCategory.first;
}



}
