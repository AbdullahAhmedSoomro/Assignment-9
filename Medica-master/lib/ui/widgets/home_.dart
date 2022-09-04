import 'package:flutter/material.dart';
import 'package:medicaApp/ui/widgets/home_icon_container.dart';
import 'package:medicaApp/ui/widgets/home_text_widget.dart';

homeCatergories({ required ic, required t}) {
  return Column(
    children: [
      homeIconCont(icn: ic),
      HomeTextWidget(text: t),
    ],
  );
}
