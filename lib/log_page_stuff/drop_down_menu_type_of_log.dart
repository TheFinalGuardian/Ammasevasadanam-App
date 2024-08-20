import 'package:flutter/material.dart';

// TODO: convert list to enum
const List<String> typeOfLogOption = <String>['Donation', 'Expense'];
String log = '';

// ignore: must_be_immutable
class DropDownMenuTypeOfLog extends StatefulWidget {
  String? type;
  DropDownMenuTypeOfLog({super.key, this.type});

  String getLogType() {
    return log;
  }

  @override
  State<DropDownMenuTypeOfLog> createState() => _DropDownMenuTypeOfLogState();
}

class _DropDownMenuTypeOfLogState extends State<DropDownMenuTypeOfLog> {
  String dropdownValue = typeOfLogOption.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: firstSelect(widget.type),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          widget.type = value!;
          log = value;
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

String firstSelect(String? type) {
  if (type != null) {
    if (type == typeOfLogOption.first) {
      return typeOfLogOption.first;
    }
    return typeOfLogOption[1];
  }
  return typeOfLogOption[1];
}
