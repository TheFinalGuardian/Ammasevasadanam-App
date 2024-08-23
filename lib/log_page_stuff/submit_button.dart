// ignore_for_file: must_be_immutable
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
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                if (!widget.parent.fillValues()) {
                  return;
                }

                widget.parent
                  ..crData()
                  ..update()
                  ..clearValues();
                
                Navigator.of(context).pop();
              },
              child: const Text("Save")),
          ElevatedButton(
              onPressed: () {
                widget.parent
                  ..crData()
                  ..delete()
                  ..clearValues();

                Navigator.of(context).pop();
              },
              child: const Text("Delete")),
        ],
      );
    } else {
      return ElevatedButton(
          onPressed: () {
            if (!widget.parent.fillValues()) {
              return;
            }

            widget.parent
              ..crData()
              ..submit()
              ..clearValues();
          },
          child: const Text("Submit"));
    }
  }
}
