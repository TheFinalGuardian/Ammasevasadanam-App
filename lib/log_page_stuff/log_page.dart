// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/log_page_stuff/amount.dart';
import 'package:ammasevasadanam_app/log_page_stuff/category.dart';
import 'package:ammasevasadanam_app/log_page_stuff/drop_down_menu_type_of_log.dart';
import 'package:ammasevasadanam_app/log_page_stuff/particulars.dart';
import 'package:ammasevasadanam_app/log_page_stuff/submit_button.dart';
import 'package:ammasevasadanam_app/log_page_stuff/vch_num.dart';
import 'package:ammasevasadanam_app/log_page_stuff/vch_type.dart';
import 'package:flutter/material.dart';

// @TODO: replace foredit constructor with from data taking data object as parameter

class LogPage extends StatefulWidget {
  bool? edit;
  String? type;
  String? category;
  String? title;
  String? vchType;
  int? vchNum;
  int? cost;

  LogPage({super.key});
  LogPage.forEdit(
      {super.key,
      this.edit,
      this.type,
      this.category,
      this.title,
      this.vchType,
      this.vchNum,
      this.cost});

  late Amount amount = Amount(cost: cost);
  late VchNum vchNumUI = VchNum(vchNumber: vchNum);
  late VchType vchTypeUI = VchType(vchType: vchType);
  late Particulars particulars = Particulars(title: title);
  late Group group = Group(type: category);
  late DropDownMenuTypeOfLog typeOfLog = DropDownMenuTypeOfLog(type: type);

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
          physics: const ClampingScrollPhysics(),
          child: Stack(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 20),
                    const Text("Select Type of Log: "),
                    const SizedBox(
                      width: 10,
                    ),
                    widget.typeOfLog,
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: widget.group,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: widget.particulars,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Text("VCH Type: "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: widget.vchTypeUI,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0, top: 10.0),
                  child: widget.vchNumUI,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Text("₹"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: widget.amount,
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Submit(edit: widget.edit),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Text("Edit Added Entries:"),
                ),
              ],
            ),
          ])),
    );
  }
}
