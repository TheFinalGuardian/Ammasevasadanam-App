// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/custom_tile.dart';
import 'package:flutter/material.dart';
import 'package:ammasevasadanam_app/main.dart';

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
        aap.getUI().getLogPage().getAmountObj().getAmountText()
      );
    }, 
    child: const Text("Submit"));
    }
  }
}