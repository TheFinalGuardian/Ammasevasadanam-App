import 'package:ammasevasadanam_app/animations/transition_animation_folder/left_to_right.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:flutter/material.dart';

class CustomTile extends StatefulWidget {
  String date;
  String person;

  String Type;
  String Group;
  String Title;
  String VCHType;
  String VCHNum;
  String Cost;

  CustomTile(
      {super.key,
    required this.Type,
    required this.Group,
    required this.Title,
    required this.VCHType,
    required this.VCHNum,
    required this.Cost,
    required this.person,
    required this.date
      });

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.0),
      child: Material(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.black),
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
                  CustomText(input: ("${widget.Title}: ")),
                  Text('₹${widget.Cost}')
                ],
              ),
            ],
          ),
          subtitle: Text("By: ${widget.person}"),
          onTap: () {
            Navigator.of(context).pushReplacement(leftToRight(LogPage(Type: widget.Type, Group: widget.Group,Title: widget.Title,VCHNum: widget.VCHNum,VCHType: widget.VCHType,Cost: widget.Cost)));
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
