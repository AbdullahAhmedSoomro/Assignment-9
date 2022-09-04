import 'package:flutter/material.dart';

class CustomGreyText extends StatelessWidget {
  final String text;
  final double leftRightPadding;

  const CustomGreyText({super.key, required this.text, required this.leftRightPadding,});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftRightPadding, right: leftRightPadding),
      child: Text(
        text,
        style: const TextStyle(color: Colors.grey, fontSize: 16),
      ),
    );
  }
}
