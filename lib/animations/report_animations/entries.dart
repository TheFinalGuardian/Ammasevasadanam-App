import 'dart:async';
import 'dart:developer';

import 'package:ammasevasadanam_app/animations/report_animations/loading_animation.dart';
import 'package:ammasevasadanam_app/firestore/database_service.dart';
import 'package:ammasevasadanam_app/firestore/log_data.dart';
import 'package:ammasevasadanam_app/report_page_stuff/custom_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

List<Data> _entries = [];
List<CustomTile> _entryTiles = [];
bool didCreateEntries = false;

class Entries extends StatefulWidget {
  const Entries({super.key});

  @override
  State<Entries> createState() => _EntriesListState();
}

class _EntriesListState extends State<Entries> {
  late Future<AggregateQuerySnapshot> count;
  late StreamSubscription logs;
  final GlobalKey<AnimatedListState> _reportKey =
      GlobalKey<AnimatedListState>();
  late Future<bool> keyWait;

  final Animatable<Offset> _offsetTween =
      Tween(begin: const Offset(1, 0), end: const Offset(0, 0))
          .chain(CurveTween(curve: Curves.easeInExpo));

  @override
  void initState() {
    count = service.getCountSnapshot();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: count,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data!.count! > 0) {
              SizedBox box = SizedBox(
                height: 465,
                child: AnimatedList(
                    key: _reportKey,
                    initialItemCount: _entryTiles.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index, animation) {
                      return SlideTransition(
                        position: animation.drive(_offsetTween),
                        child: _entryTiles[index],
                      );
                    }),
              );

              logs = service.getLogs().listen(updateData);

              return box;
            } else {
              return Text(
                  "Sorry, there are no logs to display as of the current moment",
                  style: Theme.of(context).textTheme.bodyMedium);
            }
          } else {
            return Column(
              children: [
                const Loader(),
                Text(
                  "Waiting for connection...",
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            );
          }
        });
  }

  @override
  void dispose() {
    _entries.clear();
    _entryTiles.clear();
    didCreateEntries = false;
    super.dispose();
  }

  FutureOr crEntryTiles() {
    if (_reportKey.currentState == null) {
      return false;
    }

    for (int i = 0; i < _entries.length; i++) {
      _entryTiles.add(CustomTile.fromData(_entries[i]));
      _reportKey.currentState!.insertItem(_entryTiles.length - 1);
    }

    return true;
  }

  void updateData(QuerySnapshot<Object?> event) {
    if (!didCreateEntries) {
      _entries = event.docs.map((snapshot) => snapshot.data() as Data).toList();
      _entries.sort((a, b) => -a.time.compareTo(b.time));
      didCreateEntries = true;
      keyWait = waitForKey()
        ..then((b) {
          log(b.toString());
          return crEntryTiles();
        });
    }
  }

  Future<bool> waitForKey() async => Future(() {
        while (_reportKey.currentState == null) {
          continue;
        }

        if (_reportKey.currentState == null) {
          return false;
        }

        return true;
      });
}
