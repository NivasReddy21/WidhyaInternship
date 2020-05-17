import 'package:flutter/material.dart';
import 'package:widhya/widgets/leftContainer/curveButton.dart';

Widget leftCards1() {
  return Container(
    height: 250,
    width: 290,
    child: Card(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
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
                buttonContainer(color: Colors.orange, name: 'Go Pro'),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget leftCards2() {
  return Container(
    height: 223,
    width: 290,
    child: Card(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
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
                      'Setare Avval Co.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Telecommunications',
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
            padding: EdgeInsets.fromLTRB(15, 30, 10, 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Number of Followers'),
                    Spacer(),
                    Text('2100', style: TextStyle(color: Colors.blue))
                  ],
                ),
                SizedBox(
                  height: 15,
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
              color: Colors.blue[100],
            ),
            child: Row(
              children: [
                Text('Boost Your Views'),
                Spacer(),
                buttonContainer(color: Colors.blue[600], name: 'Visit Us'),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget leftCards3() {
  return Container(
    height: 300,
    width: 290,
    child: Card(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Recent Hashtags',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey[600],
            height: 1,
            width: 250,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '#  Design Thinking',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '#  User Experience',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '#  Usability              ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '#  Design Thinking',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'See More',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

final leftCards = [leftCards1(), leftCards2(), leftCards3()];
