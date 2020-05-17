import 'package:flutter/material.dart';
import 'package:widhya/widgets/leftContainer/curveButton.dart';

Widget leftCards1() {
  return Container(
    height: 250,
    width: 290,
    child: Card(
      margin: EdgeInsets.only(top: 10, left: 10),
      elevation: 7,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'data:image/jpeg;base64,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',
                  ),
                  radius: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Taha Hamifar',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'UI/UX Designer',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 50, 10, 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Views of Your Profile'),
                    Spacer(),
                    Text('126', style: TextStyle(color: Colors.blue))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text('Views of Your Last Project'),
                    Spacer(),
                    Text('3245', style: TextStyle(color: Colors.blue))
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 290,
            height: 66,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
            decoration: BoxDecoration(
              color: Colors.orange[100],
            ),
            child: Row(
              children: [
                Text('Boost Your Views'),
                Spacer(),
                buttonContainer,
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

final leftCards = [leftCards1()];
