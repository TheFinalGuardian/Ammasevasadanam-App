// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/page_view.dart';
import 'package:flutter/material.dart';

App aap = App();
void main() {
  runApp(App());
}
App getAAP(){
  return aap;
}

class App extends StatelessWidget {
  App({super.key});
  PageViewVersion pages3 = PageViewVersion();

  PageViewVersion getUI(){
    return pages3;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pages3,
    );
  }
}
