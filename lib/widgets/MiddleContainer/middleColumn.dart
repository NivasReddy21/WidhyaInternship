import 'package:flutter/material.dart';
import 'package:widhya/widgets/MiddleContainer/middleCards.dart';

class MiddleContainer extends StatefulWidget {
  final List postData;

  const MiddleContainer({Key key, this.postData}) : super(key: key);

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
          children: middleFunc(widget.postData),
        ));
  }
}
