import 'package:flutter/material.dart';

class AddedMonthlyEntriesList extends StatefulWidget {
  const AddedMonthlyEntriesList({super.key});

  @override
  State<AddedMonthlyEntriesList> createState() => _AddedMonthlyEntriesListState();
}

class _AddedMonthlyEntriesListState extends State<AddedMonthlyEntriesList> {
  @override
  Widget build(BuildContext context) {
        return ListView(
                children: const <Widget>[
        ListTile(
          leading: Icon(Icons.map),
          title: Text('Map'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Album'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
        ),
      ],
    ); 
  }
}