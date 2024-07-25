import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:flutter/material.dart';

class MonthlyEntries extends StatefulWidget {
  const MonthlyEntries({super.key});

  @override
  State<MonthlyEntries> createState() => _AddedMonthlyEntriesListState();
}

class _AddedMonthlyEntriesListState extends State<MonthlyEntries> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const <Widget>[
        CustomTile(
            date: '6/14/24',
            tileName: "Groceries",
            person: "Vikram",
            cost: '333'),
        CustomTile(
            date: '6/15/24',
            tileName: "Milk from KVSR",
            person: "Jyothika",
            cost: '60'),
        CustomTile(
            date: '6/14/24',
            tileName: "Groceries",
            person: "Vikram",
            cost: '333'),
        CustomTile(
            date: '6/15/24',
            tileName: "Milk from KVSR",
            person: "Jyothika",
            cost: '60'),
        CustomTile(
            date: '6/14/24',
            tileName: "Groceries",
            person: "Vikram",
            cost: '333'),
        CustomTile(
            date: '6/15/24',
            tileName: "Milk from KVSR",
            person: "Jyothika",
            cost: '60'),
        CustomTile(
            date: '6/15/24',
            tileName: "Milk from KVSR",
            person: "Jyothika",
            cost: '60'),
        CustomTile(
            date: '6/15/24',
            tileName: "Milk from KVSR",
            person: "Jyothika",
            cost: '60'),
      ],
    );
  }
}
