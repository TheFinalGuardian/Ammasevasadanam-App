import 'package:ammasevasadanam_app/log_page_stuff/added_monthly_entries_list.dart';
import 'package:ammasevasadanam_app/log_page_stuff/amount.dart';
import 'package:ammasevasadanam_app/log_page_stuff/category.dart';
import 'package:ammasevasadanam_app/log_page_stuff/drop_down_menu_type_of_log.dart';
import 'package:ammasevasadanam_app/log_page_stuff/particulars.dart';
import 'package:ammasevasadanam_app/log_page_stuff/submit_button.dart';
import 'package:ammasevasadanam_app/log_page_stuff/vch_num.dart';
import 'package:ammasevasadanam_app/log_page_stuff/vch_type.dart';
import 'package:flutter/material.dart';

class LogPage extends StatefulWidget {
  String Type;
  String Group;
  String Title;
  String VCHType;
  String VCHNum;
  String Cost;

LogPage({super.key, required this.Type, required this.Group, required this.Title, required this.VCHType, required this.VCHNum, required this.Cost });

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Page'),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
          child: Stack(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 20),
                Text("Select Type of Log: "),
                SizedBox(
                  width: 10,
                ),
                DropDownMenuTypeOfLog(type: widget.Type),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Category(type: widget.Group),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Particulars(Title: widget.Title,),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Text("VCH Type: "),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: VchType(VCH: widget.VCHType),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 48.0, top: 10.0),
              child: VchNum(VCHNUM: widget.VCHNum),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Text("₹"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Amount(cost: widget.Cost),
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
          ],
        ),
      ])),
    );
  }
}
