import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:flutter/material.dart';

class AddedMonthlyEntriesList extends StatefulWidget {
  const AddedMonthlyEntriesList({super.key});

  @override
  State<AddedMonthlyEntriesList> createState() =>
      _AddedMonthlyEntriesListState();
}

class _AddedMonthlyEntriesListState extends State<AddedMonthlyEntriesList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: const <Widget>[
        
      ],
    );
  }
}
