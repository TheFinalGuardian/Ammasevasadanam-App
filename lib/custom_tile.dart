import 'package:ammasevasadanam_app/animations/transition_animation_folder/left_to_right.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:ammasevasadanam_app/report_page_stuff/monthly_entries.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTile extends StatefulWidget {
  String date;
  String person;

  String type;
  String group;
  String title;
  String vchType;
  int vchNum;
  int cost;

  CustomTile(
      {super.key,
      required this.type,
      required this.group,
      required this.title,
      required this.vchType,
      required this.vchNum,
      required this.cost,
      required this.person,
      required this.date});

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black),
        ),
        child: ListTile(
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    widget.date,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomText(input: ("${widget.title}: ")),
                  Text('₹${widget.cost}')
                ],
              ),
            ],
          ),
          subtitle: Text("By: ${widget.person}"),
          onTap: () {
            Navigator.of(context).push(leftToRight(LogPage.forEdit(
                type: widget.type,
                category: widget.group,
                title: widget.title,
                vchNum: widget.vchNum,
                vchType: widget.vchType,
                cost: widget.cost)));
          },
        ),
      ),
    );
  }
}

class CustomText extends StatefulWidget {
  final String input;
  const CustomText({super.key, required this.input});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.input,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ));
  }
}

void create(String date, String person, String type, String group, String title,
    String vchType, int vchNum, int cost) {
  entries.add(CustomTile(
      date: date,
      person: person,
      type: type,
      group: group,
      title: title,
      vchType: vchType,
      vchNum: vchNum,
      cost: cost));
}
