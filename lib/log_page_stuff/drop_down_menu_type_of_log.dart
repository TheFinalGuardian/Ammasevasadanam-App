import 'package:flutter/material.dart';

const List<String> typeOfLogOption = <String>['Donation', 'Expense'];

class DropDownMenuTypeOfLog extends StatefulWidget {
  const DropDownMenuTypeOfLog({super.key});

  @override
  State<DropDownMenuTypeOfLog> createState() => _DropDownMenuTypeOfLogState();
}

class _DropDownMenuTypeOfLogState extends State<DropDownMenuTypeOfLog> {
  String dropdownValue = typeOfLogOption.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: typeOfLogOption.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
