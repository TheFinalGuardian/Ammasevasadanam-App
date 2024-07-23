import 'package:ammasevasadanam_app/log_page_stuff/added_monthly_entries_list.dart';
import 'package:ammasevasadanam_app/log_page_stuff/amount.dart';
import 'package:ammasevasadanam_app/log_page_stuff/category.dart';
import 'package:ammasevasadanam_app/log_page_stuff/drop_down_menu_type_of_log.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:ammasevasadanam_app/log_page_stuff/particulars.dart';
import 'package:ammasevasadanam_app/log_page_stuff/submit.dart';
import 'package:ammasevasadanam_app/log_page_stuff/vch_num.dart';
import 'package:ammasevasadanam_app/log_page_stuff/vch_type.dart';
import 'package:flutter/material.dart';

class LogPagePlaceHolderWithScroll extends StatelessWidget {
  const LogPagePlaceHolderWithScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
    child: Stack( children: <Widget>[
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 20),
                Text("Select Type of Log: "),
                SizedBox(width: 10,),
                DropDownMenuTypeOfLog(),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Category(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Particulars(),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: Text("VCH Type: "),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: VchType(),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 48.0, top: 10.0),
            child: VchNum(),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: Text(
                  "₹"
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: Amount(),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Submit(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Text("Edit Added Entries:"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: AddedMonthlyEntriesList(),
          ),
        ],
      ),
    ]));
  }
}