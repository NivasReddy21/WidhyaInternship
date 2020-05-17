import 'package:flutter/material.dart';
import 'package:widhya/services/loading.dart';
import 'package:widhya/widgets/MiddleContainer/middleColumn.dart';
import 'package:widhya/widgets/navigation.dart';
import 'package:widhya/widgets/leftContainer/leftColumn.dart';
import 'package:widhya/widgets/rightContainer/rightColumn.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => LoadingScreen(),
      '/homePage': (context) => MyHomePage()
    },
  ));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map postDataObj;
  List postData;
  @override
  Widget build(BuildContext context) {
    postDataObj = ModalRoute.of(context).settings.arguments;
    postData = postDataObj['postData'];
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: Column(
          children: [
            NavigationBar(),
            Row(
              children: [
                LeftColumn(),
                MiddleContainer(
                  postData: postData,
                ),
                RightColumn()
              ],
            )
          ],
        ),
      ),
    );
  }
}
