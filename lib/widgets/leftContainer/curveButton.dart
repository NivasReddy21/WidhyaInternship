import 'package:flutter/material.dart';

Container buttonContainer = Container(
  child: FlatButton(
    onPressed: null,
    child: Text(
      'Go Pro',
      style: TextStyle(color: Colors.white),
    ),
  ),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25), color: Colors.orange),
);
