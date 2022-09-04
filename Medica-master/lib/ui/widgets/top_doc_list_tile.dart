import 'package:flutter/material.dart';
import 'package:medicaApp/ui/widgets/small_text.dart';

import 'custom_Text_widget.dart';
import 'doc_image_container.dart';
class TopDocListTile extends StatelessWidget {
  final Function()? function;
  final String largeText;
  final String smallText1;
  final String smallText2;
  final String image;
  const TopDocListTile({
    Key? key,
    this.function,
    required this.largeText,
    required this.smallText1,
    required this.smallText2,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: ListTile(
        onTap: function,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        leading: DoctorImageContainer(image: image),
        tileColor: Colors.white,
        title: CustomTextWidget(text: largeText, fontSize: 18),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText(text: '$smallText1 | $smallText2'),
            Center(
              child: Row(
                children: const [
                  Icon(Icons.star_border_outlined),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('4.9 (4217 reviews)'),
                  )
                ],
              ),
            )
          ],
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
              color: Colors.blue,
            )),
      ),
    );
  }
}
