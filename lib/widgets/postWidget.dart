import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 150,
      width: 590,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, left: 5),
              padding: EdgeInsets.only(top: 5, left: 5),
              child: TextField(
                cursorColor: Colors.grey[600],
                decoration: InputDecoration(
                  hintText: 'What Are Your Thoughts Today',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.attach_file,
                      color: Colors.grey[600],
                    ),
                    onPressed: () {},
                  ),
                  fillColor: Colors.grey[200],
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
                maxLines: null,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'People Loves to Read Your Professional Experiences',
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Text(
                    'Post This!',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
