import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:flutter/material.dart';


GlobalKey<CustomTileState> globalKey1 = GlobalKey<CustomTileState>();
List<GlobalKey<CustomTileState>> entryKeys = [
  globalKey1,
];


List<Widget> entries = [
  CustomTile(key: entryKeys[0], person: "Anand",date: "07/12/2024",type: "Donation", group: "Rent",title: "Paying 1 Person Rent",vchNum: "343",vchType: "Payment",cost: "500", numID: getTally()),
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

