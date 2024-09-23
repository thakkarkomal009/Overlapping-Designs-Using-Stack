import 'package:flutter/material.dart';
import 'package:layering_food_ui_using_stack/util/color.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: pinkColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(60),
          topLeft: Radius.circular(60),
        ),
      ),
      child: const Icon(
        Icons.qr_code_scanner,
        color: Colors.white,
      ),
    );
  }
}
