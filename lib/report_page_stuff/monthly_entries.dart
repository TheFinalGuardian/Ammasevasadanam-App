import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:flutter/material.dart';

GlobalKey<AddedMonthlyEntriesListState> listKey = GlobalKey<AddedMonthlyEntriesListState>();

GlobalKey<CustomTileState> globalKey1 = GlobalKey<CustomTileState>();
List<GlobalKey<CustomTileState>> entryKeys = [
  globalKey1,
];


List<Widget> entries = [
  CustomTile(key: entryKeys[0], person: "Anand",date: "07/12/2024",type: "Donation", group: "Rent",title: "Paying 1 Person Rent",vchNum: "343",vchType: "Payment",cost: "500", numID: getTally()),
];

class MonthlyEntries extends StatefulWidget {
  List<Widget> localEntries;
  MonthlyEntries({super.key, required this.localEntries});
  

  @override
  State<MonthlyEntries> createState() => AddedMonthlyEntriesListState();
}

class AddedMonthlyEntriesListState extends State<MonthlyEntries> {

  void updateList(List<Widget> xkl){
    setState(() {
      widget.localEntries = xkl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 465,
      child: ListView(
        shrinkWrap: true,
        physics:  const ClampingScrollPhysics(),
        children: widget.localEntries,
      ),
    );
  }

  
}

remove(){
    print(entries.length);
    entries.removeAt(0);
    listKey.currentState?.updateList(entries);
    print(entries.length);
  }