import 'package:flutter/material.dart';

class CustomTile extends StatefulWidget {
  final String date;
  final String tileName;
  final String person;
  final String cost;

  const CustomTile(
      {super.key,
      required this.date,
      required this.tileName,
      required this.person,
      required this.cost});

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black),
        ),
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
                CustomText(input: ("${widget.tileName}: ")),
                Text('₹${widget.cost}')
              ],
            ),
          ],
        ),
        subtitle: Text("By: ${widget.person}"),
        onTap: () {},
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
