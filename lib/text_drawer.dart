import 'package:flutter/material.dart';

class TextDrawer extends StatelessWidget {
  TextDrawer({required this.lable});
  String lable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        lable,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
