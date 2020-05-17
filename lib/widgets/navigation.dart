import 'package:flutter/material.dart';
import 'package:widhya/widgets/searchBar.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SearchBar(),
        Spacer(),
        navButtons(icon: Icons.home, name: 'Home'),
        navButtons(icon: Icons.network_wifi, name: 'Network'),
        navButtons(icon: Icons.notifications, name: 'Notification'),
        Container(
          height: 25,
          width: 1,
          color: Colors.grey[400],
        ),
        navButtons(icon: Icons.group_work, name: 'Work'),
      ],
    );
  }

  Widget navButtons({IconData icon, String name}) {
    return FlatButton(
      onPressed: null,
      child: Column(
        children: [
          Icon(icon, color: Colors.grey[600]),
          Text(name),
        ],
      ),
    );
  }
}
