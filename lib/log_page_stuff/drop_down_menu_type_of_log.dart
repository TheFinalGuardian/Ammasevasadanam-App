import 'package:flutter/material.dart';

const List<String> logTypes = <String>[
  'Expense',
  'Donation',
];

// ignore: must_be_immutable
class LogType extends StatefulWidget {
  String? type;
  LogType({super.key, this.type});
  String getLogType() => type ?? logTypes.first;

  @override
  State<LogType> createState() => _LogState();
}

class _LogState extends State<LogType> {
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
          logTypes.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }

  String initialSelection(String? type) {
    return widget.type ?? logTypes.first;
  }
}
