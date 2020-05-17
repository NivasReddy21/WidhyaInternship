import 'package:flutter/material.dart';
import 'package:widhya/widgets/leftContainer/leftCards.dart';

class LeftColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: leftCards,
    );
  }
}
