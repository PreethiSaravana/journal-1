import 'package:flutter/material.dart';

String selectedItem = 'Emotion';

class TagSelect extends StatefulWidget {
  @override
  _TagSelectState createState() => _TagSelectState();
}

class _TagSelectState extends State<TagSelect> {
  List<String> items = <String>['Emotion', 'Person', 'Place', "Custom"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: DropdownButton<String>(
        value: selectedItem,
        onChanged: (String string) {
          setState(() {
            selectedItem = string;
          });
        },
        selectedItemBuilder: (BuildContext context) {
          return items.map<Widget>((String item) {
            return Text(item);
          }).toList();
        },
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            child: Text(item),
            value: item,
          );
        }).toList(),
      ),
    );
  }
}