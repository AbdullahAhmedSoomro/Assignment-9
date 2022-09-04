// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DoctorImageContainer extends StatelessWidget {
  late String image;
  DoctorImageContainer({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
      child: Image(
        image: AssetImage(
          image,
        ),
        height: 100,
      ),
    );
  }
}
