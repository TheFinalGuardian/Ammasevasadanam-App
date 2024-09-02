import 'dart:async';

import 'package:ammasevasadanam_app/animations/report_animations/loading_animation.dart';
import 'package:ammasevasadanam_app/firestore/database_service.dart';
import 'package:ammasevasadanam_app/firestore/log_data.dart';
import 'package:ammasevasadanam_app/report_page_stuff/custom_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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

  final Animatable<Offset> _createTween =
      Tween(begin: const Offset(1, 0), end: const Offset(0, 0))
          .chain(CurveTween(curve: Curves.easeInExpo));
  final Animatable<Offset> _removeTween =
      Tween(begin: const Offset(-1, 0), end: const Offset(0, 0))
          .chain(CurveTween(curve: Curves.easeOutExpo));

  final itemChangeDuration = const Duration(seconds: 1);

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
                        position: animation.drive(_createTween),
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
    _entryTiles.clear();
    didCreateEntries = false;
    super.dispose();
  }

  FutureOr crEntryTiles(List<Data> entries) {
    if (_reportKey.currentState == null) {
      return false;
    }

    for (int i = 0; i < entries.length; i++) {
      _entryTiles.add(CustomTile.fromData(entries[i]));
      _reportKey.currentState!.insertItem(_entryTiles.length - 1);
    }

    return true;
  }

  void updateData(QuerySnapshot<Object?> event) {
    List<Data> entries = [];

    if (!didCreateEntries) {
      entries = event.docs.map((snapshot) => snapshot.data() as Data).toList();
      entries.sort((a, b) => -a.time.compareTo(b.time));
      didCreateEntries = true;
      keyWait = waitForKey()..then((b) => crEntryTiles(entries));
    }

    event.docChanges.forEach(readChange);
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

  void readChange(DocumentChange<Object?> change) {
    CustomTile tile = CustomTile.fromData(change.doc.data() as Data);
    int index = binarySearch(_entryTiles, tile);

    switch (change.type) {
      case DocumentChangeType.added:
        addItem(index, tile);
        break;
      case DocumentChangeType.modified:
        removeItem(index, _entryTiles[index]);
        Future.delayed(itemChangeDuration).then((_) => addItem(index, tile));
        break;
      case DocumentChangeType.removed:
        removeItem(index, tile);
        break;
    }
  }

  void addItem(int index, CustomTile tile) async {
    _entryTiles.insert(index, tile);
    _reportKey.currentState!.insertItem(index, duration: itemChangeDuration);
  }

  void removeItem(int index, CustomTile tile) {
    _reportKey.currentState!.removeItem(
        index, (context, animation) => removeAnim(context, animation, tile),
        duration: itemChangeDuration);
    _entryTiles.removeAt(index);
  }

  int binarySearch(List<CustomTile> list, CustomTile tile) {
    int start = 0;
    int end = list.length - 1;
    int mid = -1;
    while (start <= end) {
      mid = ((start + end) / 2).floor();
      if (list[mid].time == tile.time) {
        return mid;
      }
      if (list[mid].time.compareTo(tile.time) > 0) {
        start = mid + 1;
      } else {
        end = mid - 1;
      }
    }
    return mid;
  }

  Widget removeAnim(
      BuildContext context, Animation<double> animation, CustomTile tile) {
    return SlideTransition(
      position: animation.drive(_removeTween),
      child: tile,
    );
  }
}
