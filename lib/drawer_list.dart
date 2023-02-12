import 'package:flutter/material.dart';


class DrawerList extends StatelessWidget {
  DrawerList(
      {required this.icon, required this.title, required this.childTitile});

  String title;
  String childTitile;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white,size: 22),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      trailing: Text(
        childTitile,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
