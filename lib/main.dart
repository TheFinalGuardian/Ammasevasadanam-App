// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/firebase_options.dart';
import 'package:ammasevasadanam_app/page_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

App app = App();

App getApp() {
  return app;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: "Ammasevasadanam App",
      options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: true);
  runApp(getApp());
}

class App extends StatelessWidget {
  App({super.key});
  PageViewVersion pages3 = PageViewVersion();

  PageViewVersion getUI() {
    return pages3;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pages3,
    );
  }
}
