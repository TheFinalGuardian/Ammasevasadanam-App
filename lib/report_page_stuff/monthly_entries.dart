import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:flutter/material.dart';

// @TODO: UPDATE WITH STUFF FROM DB
List<Widget> entries = [
  CustomTile(
      person: "Anand",
      date: "07/12/2024",
      type: "Donation",
      group: "Rent",
      title: "Paying 1 Person Rent",
      vchNum: 343,
      vchType: "Payment",
      cost: 500),
];

class MonthlyEntries extends StatefulWidget {
  const MonthlyEntries({super.key});

  @override
  State<MonthlyEntries> createState() => _AddedMonthlyEntriesListState();
}

class _AddedMonthlyEntriesListState extends State<MonthlyEntries> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 465,
      child: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: entries,
      ),
    );
  }
}
