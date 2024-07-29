import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:flutter/material.dart';

List<Widget> entries = [
  CustomTile(person: "Anand",date: "07/12/2024",Type: "Donation", Group: "Rent",Title: "Paying 1 Person Rent",VCHNum: "343",VCHType: "Payment",Cost: "500"),
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
