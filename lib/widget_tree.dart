import 'package:ammasevasadanam_app/auth.dart';
import 'package:ammasevasadanam_app/login_register_page.dart';
import 'package:ammasevasadanam_app/page_view.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  PageViewVersion pages3 = PageViewVersion();

  PageViewVersion getUI() {
    return pages3;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return pages3;
          } else {
            return const LoginRegisterPage();
          }
        });
  }
}
