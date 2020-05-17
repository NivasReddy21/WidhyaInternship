import 'package:flutter/material.dart';

Widget buttonContainer({Color color, String name}) {
  return Container(
    child: FlatButton(
      onPressed: null,
      child: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
    ),
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(25), color: color),
  );
}

Widget roundButton({Color color, IconData icon}) {
  return Container(
    child: IconButton(icon: Icon(icon), onPressed: null),
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(100), color: color),
  );
}
