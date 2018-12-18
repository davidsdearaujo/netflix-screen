import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool selected;

  IconWidget(this.icon, this.text, {this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, color: selected ? Colors.grey[300] : Colors.grey, size: 25),
        SizedBox(height: 2,),
        Text(
          text,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        )
      ],
    );
  }
}