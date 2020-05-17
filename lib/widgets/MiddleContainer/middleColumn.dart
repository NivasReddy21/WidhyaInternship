import 'package:flutter/material.dart';
import 'package:widhya/services/posts.dart';
import 'package:widhya/widgets/MiddleContainer/middleCards.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MiddleContainer extends StatefulWidget {
  @override
  _MiddleContainerState createState() => _MiddleContainerState();
}

class _MiddleContainerState extends State<MiddleContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 70,
        width: MediaQuery.of(context).size.width / 1.7,
        child: ListView(
          children: middleCards,
        ));
  }
}
