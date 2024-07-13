import 'package:flutter/material.dart';


const List<String> TypeOfCategory = <String>['Rent', 'Provisions', 'Vegetables','SBI -33480143480'];

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  String ?CSelect;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: TypeOfCategory.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          CSelect = value!;
        });
      },
      dropdownMenuEntries: TypeOfCategory.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}