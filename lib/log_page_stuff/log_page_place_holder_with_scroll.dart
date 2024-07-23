import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:flutter/material.dart';

class LogPagePlaceHolderWithScroll extends StatelessWidget {
  const LogPagePlaceHolderWithScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
    child: Stack( children: <Widget>[
      LogPage()
    ]));
  }
}