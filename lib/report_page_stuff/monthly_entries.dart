import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:flutter/material.dart';

class MonthlyEntries extends StatefulWidget {
  MonthlyEntries({super.key});

  @override
  State<MonthlyEntries> createState() => _AddedMonthlyEntriesListState();
}

class _AddedMonthlyEntriesListState extends State<MonthlyEntries> {
  @override
  Widget build(BuildContext context) {
        return ListView(
        shrinkWrap: true,
        children: <Widget>[
          CustomTile(date: '6/14/24', TileName: "Groceries", Person: "Vikram", cost: '333'),
          CustomTile(date: '6/15/24', TileName: "Milk from KVSR", Person: "Jyothika", cost: '60'),
          CustomTile(date: '6/14/24', TileName: "Groceries", Person: "Vikram", cost: '333'),
          CustomTile(date: '6/15/24', TileName: "Milk from KVSR", Person: "Jyothika", cost: '60'),
          CustomTile(date: '6/14/24', TileName: "Groceries", Person: "Vikram", cost: '333'),
          CustomTile(date: '6/15/24', TileName: "Milk from KVSR", Person: "Jyothika", cost: '60'),
          CustomTile(date: '6/15/24', TileName: "Milk from KVSR", Person: "Jyothika", cost: '60'),
          CustomTile(date: '6/15/24', TileName: "Milk from KVSR", Person: "Jyothika", cost: '60'),
      ],
    ); 
  }
}

