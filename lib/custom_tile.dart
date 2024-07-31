// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/animations/transition_animation_folder/left_to_right.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:ammasevasadanam_app/log_page_stuff/submit_button.dart';
import 'package:ammasevasadanam_app/report_page_stuff/monthly_entries.dart';
import 'package:flutter/material.dart';

int tally = -1;
int getTally(){
  tally++;
  return tally;
}
class CustomTile extends StatefulWidget {
  String date;
  String person;

  String type;
  String group;
  String title;
  String vchType;
  String vchNum;
  String cost;
  int numID;

  CustomTile(
      {super.key,
    required this.type,
    required this.group,
    required this.title,
    required this.vchType,
    required this.vchNum,
    required this.cost,
    required this.person,
    required this.date,
    required this.numID,
      });

  

  @override
  State<CustomTile> createState() => CustomTileState();
}

class CustomTileState extends State<CustomTile> {
  void update(String date,String person,String type,String group,String title,String vchType,String vchNum,String cost){
    setState(() {
      widget.date = date;
      widget.person = person;
      widget.type = type;
      widget.group = group;
      widget.title = title;
      widget.vchType = vchType;
      widget.vchNum = vchNum;
      widget.cost = cost;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Material(
          /*shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black),
            ),*/
          child: Card(
            color: Colors.pink[50],
            elevation: 10,
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
                staticTrack = widget.numID;
                Navigator.of(context).push(leftToRight(LogPage.edit(edit: true,type: widget.type, category: widget.group,title: widget.title,vchNum: widget.vchNum,vchType: widget.vchType,cost: widget.cost)));
              },
            ),
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

void create(String date,String person,String type,String group,String title,String vchType,String vchNum,String cost, int count){
  GlobalKey<CustomTileState> globalKey2 = GlobalKey<CustomTileState>();
  entries.add(CustomTile(key: globalKey2, date: date, person: person, type: type, group: group, title: title, vchType: vchType, vchNum: vchNum, cost: cost, numID: count));
  entryKeys.add(globalKey2);
}
