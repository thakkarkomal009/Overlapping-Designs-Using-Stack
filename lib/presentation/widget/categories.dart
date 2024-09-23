import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String icon;
  final String text;
  final Color color;

  const Categories(
      {super.key, required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              icon,
              width: 32,
              height: 32,
              color: color,
            ),
          ),
          Center(
            child: Text(
              text,
              style: TextStyle(color: color),
            ),
          )
        ],
      ),
    );
  }
}
