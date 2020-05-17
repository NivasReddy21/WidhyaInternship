import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:widhya/widgets/postWidget.dart';

Widget middleCards1(List postData, int i) {
  return Container(
    height: 570,
    width: 590,
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
                      'data:image/png;base64,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'),
                  radius: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${postData[i]['title']}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '111,234 followers',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 30, 10, 10),
            child: Text('${postData[i]['description']}'),
          ),
          Container(
            width: 750,
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              child: Image.network(
                '${postData[i]['url']}',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: Row(
              children: [
                Text(
                  '112 Likes',
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '0 comments',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '0 share',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 15, left: 20, right: 10),
              child: Row(
                children: [
                  LikeButton(
                    size: 30,
                    circleColor:
                        CircleColor(start: Colors.pink, end: Colors.pink[400]),
                    bubblesColor: BubblesColor(
                      dotPrimaryColor: Colors.pink[300],
                      dotSecondaryColor: Colors.pink,
                    ),
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        Icons.favorite,
                        color: isLiked ? Colors.pink : Colors.grey,
                        size: 28,
                      );
                    },
                    countBuilder: (int count, bool isLiked, String text) {
                      Widget result;

                      return result;
                    },
                  ),
                  IconButton(icon: Icon(Icons.message), onPressed: null),
                  Spacer(),
                  IconButton(icon: Icon(Icons.share), onPressed: null)
                ],
              ))
        ],
      ),
    ),
  );
}

List<Widget> middleFunc(List postData) {
  List<Widget> postCards = [];
  postCards.add(PostWidget());
  for (int i = 0; i < postData.length; i++) {
    postCards.add(middleCards1(postData, i));
  }
  return postCards;
}
