// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/firestore/firebase_options.dart';
import 'package:ammasevasadanam_app/Themes/theme_constants.dart';
import 'package:ammasevasadanam_app/Themes/theme_manager.dart';
import 'package:ammasevasadanam_app/page_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: "Ammasevasadanam App",
      options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: true);
  runApp(App());
}

App getAAP() {
  return aap;
}

ThemeManager themeManager = ThemeManager();

class App extends StatefulWidget {
  late _AppState _state;
  App({super.key});

  PageViewVersion getUI() {
    return _state.pages3;
  }

  @override
  // ignore: no_logic_in_create_state
  State<App> createState() => _state = _AppState();
}

class _AppState extends State<App> {
  PageViewVersion pages3 = PageViewVersion();

  @override
  void dispose() {
    themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    themeManager.addListener(themeListener);
    super.initState();
  }

  void themeListener() {
    if (mounted) {
      setState(() {});
    }
  PageViewVersion getUI() {
    return pages3;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pages3,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeManager.themeMode,
      routes: {
        '/logPage': (context) => pages3
      },
    );
  }
}
}