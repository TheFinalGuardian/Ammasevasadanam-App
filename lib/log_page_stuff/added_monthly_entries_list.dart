import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:ammasevasadanam_app/report_page_stuff/monthly_entries.dart';
import 'package:flutter/material.dart';

class AddedMonthlyEntriesList extends StatefulWidget {
  AddedMonthlyEntriesList({super.key});

  @override
  State<AddedMonthlyEntriesList> createState() => _AddedMonthlyEntriesListState();
}

class _AddedMonthlyEntriesListState extends State<AddedMonthlyEntriesList> {
  @override
  Widget build(BuildContext context) {
        return ListView(
        shrinkWrap: true,
        children: <Widget>[
        CustomTile(date: '6/1/24', TileName: "Log", Person: "Vikram", cost: '100'),
      ],
    ); 
  }
}