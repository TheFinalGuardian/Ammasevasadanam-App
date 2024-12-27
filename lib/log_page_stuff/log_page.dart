// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/firestore/database_service.dart';
import 'package:ammasevasadanam_app/firestore/log_data.dart';
import 'package:ammasevasadanam_app/log_page_stuff/amount.dart';
import 'package:ammasevasadanam_app/log_page_stuff/category.dart';
import 'package:ammasevasadanam_app/log_page_stuff/drop_down_menu_type_of_log.dart';
import 'package:ammasevasadanam_app/log_page_stuff/particulars.dart';
import 'package:ammasevasadanam_app/log_page_stuff/submit_button.dart';
import 'package:ammasevasadanam_app/log_page_stuff/vch_num.dart';
import 'package:ammasevasadanam_app/log_page_stuff/vch_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// TODO: replace foredit constructor with from data taking data object as parameter

String bullet = "\u2022 ";

class LogPage extends StatefulWidget {
  bool edit;
  bool error;
  bool success;
  String? type;
  String? category;
  String? title;
  String? vchType;
  int? vchNum;
  int? cost;
  String? id;
  late Data _data;

  LogPage({super.key})
      : edit = false,
        error = false,
        success = false;
  LogPage.forEdit(
      {super.key,
      this.type,
      this.category,
      this.title,
      this.vchType,
      this.vchNum,
      this.cost,
      this.id})
      : edit = true,
        error = false,
        success = false;

  late Amount amount = Amount(cost: cost);
  late VchNum vchNumUI = VchNum(vchNumber: vchNum);
  late VchType vchTypeUI = VchType(vchType: vchType);
  late Particulars particulars = Particulars(title: title);
  late Group group = Group(type: category);
  late LogType typeOfLog = LogType(type: type);
  late Submit submitButton = Submit(edit: edit, parent: this);
  late _LogPageState _state;

  @override
  // ignore: no_logic_in_create_state
  State<LogPage> createState() => _state = _LogPageState();

  bool fillValues() {
    try {
      type = typeOfLog.getLogType();
      category = group.getCategoryType();
      title = particulars.getParticularsText();
      vchType = vchTypeUI.getVchType();
      vchNum = vchNumUI.getVchNum();
      cost = amount.getAmount();
    } on Exception catch (_) {
      _state.error();
      return false;
    }
    if (type == null ||
        category == null ||
        title == null ||
        vchType == null ||
        vchNum == null ||
        cost == null) {
      _state.error();
      return false;
    }
    error = false;
    return true;
  }

  void crData() => _data = Data.fromLogPage(this);
  void submit() async {
    service.addLog(_data);
    _state.success();
  }

  void update() async {
    service.updateLog(_data);
    _state.success();
  }

  void delete() async => service.removeLog(_data.id!);

  void clearValues() {
    amount.clear();
    vchNumUI.clear();
    particulars.clear();
  }
}

class _LogPageState extends State<LogPage> {
  String dropdownValue = "one";
  final _items = ['Expenses', 'Donation'];

  @override
  Widget build(BuildContext context) {
    if (widget.error) {
      SchedulerBinding.instance
          .scheduleFrameCallback((timestamp) => errorDialog(context));
    }
    if (widget.success) {
      SchedulerBinding.instance
          .scheduleFrameCallback((timestamp) => successDialog(context));
    }

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
        body: Column(
          children: [
            Container(
              width: 400,
              height: 80,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 161, 196, 255),
                  borderRadius: BorderRadius.circular(10)),
            ),
            DropdownButton(
              items: _items.map((String item) {
                return DropdownMenuItem(value: item, child: Text(item));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              value: dropdownValue,
            )
          ],
        ));
  }

  Future<dynamic> errorDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => const AlertDialog(
            title: Text("Error!"),
            content: Text(
                "Values improperly filled. Please check your inputs and resubmit."),
            elevation: 15,
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)))));
  }

  Future<dynamic> successDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) => const AlertDialog(
            title: Text("Success!"),
            content: Text("Your entry has been successfully resolved."),
            elevation: 15,
            backgroundColor: Colors.lightBlue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)))));
  }

  void error() {
    setState(() => widget.error = true);
  }

  void success() {
    setState(() => widget.success = true);
  }
}
