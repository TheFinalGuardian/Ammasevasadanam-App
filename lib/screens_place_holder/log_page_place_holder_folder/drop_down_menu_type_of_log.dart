import 'package:flutter/material.dart';
const List<String> TypeOfLogOption = <String>['Donation', 'Expense'];

class DropDownMenuTypeOfLog extends StatefulWidget {
  const DropDownMenuTypeOfLog({super.key});

  @override
  State<DropDownMenuTypeOfLog> createState() => _DropDownMenuTypeOfLogState();
}

class _DropDownMenuTypeOfLogState extends State<DropDownMenuTypeOfLog> {
  String dropdownValue = TypeOfLogOption.first;
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
      items: TypeOfLogOption.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),

    );
  }
}