import 'package:flutter/material.dart';
import 'package:medicaApp/ui/views/Categories/categories_view_model.dart';
import 'package:stacked/stacked.dart';
import '../../../Constants/img.dart';
import '../../../Constants/txt.dart';
import '../../widgets/custom_Text_widget.dart';
import '../../widgets/top_doc_list_tile.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoriesViewModel>.nonReactive(
      viewModelBuilder: () => CategoriesViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: CustomTextWidget(text: TextConstant.topDoc, fontSize: 22.0),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_horiz)))
          ],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImageConstants.doctor,
                        largeText: TextConstant.docSheldon,
                        smallText1: TextConstant.pediatric,
                        smallText2: TextConstant.cityHosp),
                    TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImageConstants.doctor,
                        largeText: TextConstant.docSheldon,
                        smallText1: TextConstant.pediatric,
                        smallText2: TextConstant.cityHosp),
                    TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImageConstants.doctor,
                        largeText: TextConstant.docSheldon,
                        smallText1: TextConstant.pediatric,
                        smallText2: TextConstant.cityHosp),
                    TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImageConstants.doctor,
                        largeText: TextConstant.docSheldon,
                        smallText1: TextConstant.pediatric,
                        smallText2: TextConstant.cityHosp),
                    TopDocListTile(
                        function: model.navigateToDetails,
                        image: ImageConstants.doctor,
                        largeText: TextConstant.docSheldon,
                        smallText1: TextConstant.pediatric,
                        smallText2: TextConstant.cityHosp),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
