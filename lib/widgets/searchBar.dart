import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 15),
      child: SizedBox(
        child: TextField(
          cursorColor: Colors.grey[600],
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[600],
            ),
            hintText: 'People, Companies, Jobs',
            fillColor: Colors.white24,
            filled: true,
            focusColor: Colors.grey[600],
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[600], width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
        height: 60,
        width: 260,
      ),
    );
  }
}
