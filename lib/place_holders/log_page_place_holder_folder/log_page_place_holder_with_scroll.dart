import 'package:ammasevasadanam_app/place_holders/log_page_place_holder_folder/log_page_place_holder.dart';
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