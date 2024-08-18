// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/Themes/theme_constants.dart';
import 'package:ammasevasadanam_app/Themes/theme_manager.dart';
import 'package:ammasevasadanam_app/page_view.dart';
import 'package:flutter/material.dart';
import 'package:ammasevasadanam_app/home_page.dart';

App aap = App();
void main() {
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
