// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/firestore/firebase_options.dart';
import 'package:ammasevasadanam_app/page_view.dart';
import 'package:ammasevasadanam_app/widget_tree.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: "Ammasevasadanam App",
      options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: true);
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WidgetTree(),
    );
  }
}
