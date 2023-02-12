import 'package:flutter/material.dart';

class MainList extends StatelessWidget {
  MainList(
      {required this.mainText,
      required this.childText,
      required this.imageLink});
  String mainText;
  String childText;
  AssetImage imageLink;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color(0xFF191919),
        radius: 25,
        backgroundImage: imageLink,
      ),
      title: Text(
        mainText,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        childText,
        style: const TextStyle(color: Colors.white),
      ),
      trailing: const Icon(
        Icons.star,
        size: 25,
        color: Colors.yellow,
      ),
    );
  }
}
