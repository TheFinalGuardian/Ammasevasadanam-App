import 'package:flutter/material.dart';

class CustomTile extends StatefulWidget {
  String date;
  String TileName;
  String Person;
  String cost;

  CustomTile({super.key, required this.date, required this.TileName, required this.Person, required this.cost});

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
            side: BorderSide(color: Colors.black),
            ),
            title: Column(
              children: [
                Row(
                  children: [
                    Text(
                      widget.date,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        ),
                      ),    
                  ],
                ),
                Row(
                  children: [
                    CustomText(input: (widget.TileName+ ": ")),
                    Text('₹'+widget.cost)
                  ],
                ),
              ],
            ),
            subtitle: Text("By: "+widget.Person),
            onTap: (){},
      ),
    );
  }
}


  
  
  
  

class CustomText extends StatefulWidget {
  String input;
  CustomText({super.key, required this.input});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
    widget.input,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    )
    );
  }
}