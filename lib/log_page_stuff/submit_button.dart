// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:ammasevasadanam_app/report_page_stuff/monthly_entries.dart';
import 'package:flutter/material.dart';
import 'package:ammasevasadanam_app/main.dart';
int staticTrack = 0;
class Submit extends StatefulWidget {
  bool? edit;
  Submit({super.key, this.edit});

  @override
  State<Submit> createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {

    if(widget.edit != null){
      return ElevatedButton(
      onPressed: () {
        entryKeys[staticTrack].currentState?.update(
          "2/3/4", 
          "Yogesh", 
          aap.getUI().getLogPage().getThis().getLogType(), 
          aap.getUI().getLogPage().getCategory().getCategoryType(),
          aap.getUI().getLogPage().getTitleObj().getParticularsText(),
          aap.getUI().getLogPage().getVCHTypeObj().getVchType(),
          aap.getUI().getLogPage().getVCHNumObj().getVchText(),
          aap.getUI().getLogPage().getAmountObj().getAmountText(),
        );
        Navigator.of(context).pop();
      },
      child: const Text("Save"));
    }else{
    return ElevatedButton(
    onPressed: () {
      create(
        "2/3/4",
        "Yogesh",
        aap.getUI().getLogPage().getThis().getLogType(),
        aap.getUI().getLogPage().getCategory().getCategoryType(),
        aap.getUI().getLogPage().getTitleObj().getParticularsText(),
        aap.getUI().getLogPage().getVCHTypeObj().getVchType(),
        aap.getUI().getLogPage().getVCHNumObj().getVchText(),
        aap.getUI().getLogPage().getAmountObj().getAmountText(),
        getTally()
      );
    }, 
    child: const Text("Submit"));
    }
  }
}