import 'package:flutter/material.dart';

class BlueText extends StatelessWidget {
  late String textt;
  BlueText({Key? key, required this.textt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textt,
      style: TextStyle(
          color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}
