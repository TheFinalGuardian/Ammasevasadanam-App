// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:flutter/material.dart';

class Submit extends StatefulWidget {
  bool edit;
  LogPage parent;

  Submit({super.key, this.edit = false, required this.parent});

  @override
  State<Submit> createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    if (widget.edit) {
      return ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Save"));
    } else {
      return ElevatedButton(
          onPressed: () {
            bool completed = widget.parent.fillValues();
            if (!completed) {
              return;
            }

            create(
                "2/3/4",
                "Yogesh",
                widget.parent.typeOfLog.getLogType(),
                widget.parent.group.getCategoryType(),
                widget.parent.particulars.getParticularsText(),
                widget.parent.vchTypeUI.getVchType(),
                widget.parent.vchNumUI.getVchNum(),
                widget.parent.amount.getAmount());
            
            widget.parent.clearValues();
          },
          child: const Text("Submit"));
    }
  }
}
