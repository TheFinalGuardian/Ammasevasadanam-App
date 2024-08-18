// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/log_page_stuff/amount.dart';
import 'package:ammasevasadanam_app/log_page_stuff/category.dart';
import 'package:ammasevasadanam_app/log_page_stuff/drop_down_menu_type_of_log.dart';
import 'package:ammasevasadanam_app/log_page_stuff/particulars.dart';
import 'package:ammasevasadanam_app/log_page_stuff/submit_button.dart';
import 'package:ammasevasadanam_app/log_page_stuff/vch_num.dart';
import 'package:ammasevasadanam_app/log_page_stuff/vch_type.dart';
import 'package:flutter/material.dart';

String bullet = "\u2022 ";

class LogPage extends StatefulWidget {
  bool? edit;
  String? type;
  String? category;
  String? title;
  String? vchType;
  String? vchNum;
  String? cost;

  LogPage({super.key});
  LogPage.edit(
      {super.key,
      this.edit,
      this.type,
      this.category,
      this.title,
      this.vchType,
      this.vchNum,
      this.cost});

  late Amount amount = Amount(cost: cost);
  late VchNum vchNumObj = VchNum(vchNumber: vchNum);
  late VchType vchTypeObj = VchType(vchType: vchType);
  late Particulars particulars = Particulars(title: title);
  late Group group = Group(type: category);
  late DropDownMenuTypeOfLog typeOfLog = DropDownMenuTypeOfLog(type: type);

  Amount getAmountObj() {
    return amount;
  }

  VchNum getVCHNumObj() {
    return vchNumObj;
  }

  VchType getVCHTypeObj() {
    return vchTypeObj;
  }

  Particulars getTitleObj() {
    return particulars;
  }

  Group getCategory() {
    return group;
  }

  DropDownMenuTypeOfLog getThis() {
    return typeOfLog;
  }

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Page'),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        title: const Text("Log Page Information"),
                        content: Column(children: [
                          Text('Log Page',
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text(
                              '$bullet First, using the dropdown menu, select the type of log (expense or donation).',
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text(
                              '$bullet Then, set a particular or list your own if the required particular is not displayed.',
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text(
                              '$bullet Enter the VCH type using the dropdown menu and then enter the VCH number.',
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text('$bullet Then press the submit button.',
                              style: Theme.of(context).textTheme.bodyMedium)
                        ]),
                        actions: [
                          TextButton(
                              child: const Text("Ok, got it."),
                              onPressed: () => Navigator.pop(context))
                        ],
                      ));
            },
            icon: Image.asset('images/info_button.png'),
          )
        ],
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
                    widget.getThis(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: widget.getCategory(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: widget.getTitleObj(),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Text("VCH Type: "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: widget.getVCHTypeObj(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0, top: 10.0),
                  child: widget.getVCHNumObj(),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Text("₹"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: widget.getAmountObj(),
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
