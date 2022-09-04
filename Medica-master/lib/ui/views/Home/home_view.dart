import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/img.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/Home/home_view_model.dart';
import 'package:medicaApp/ui/widgets/signup_Text_field.dart';
import 'package:medicaApp/ui/widgets/custom_text_button.dart';
import 'package:medicaApp/ui/widgets/home_blue_card.dart';
import 'package:medicaApp/ui/widgets/home_text_widget.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/home_.dart';
import '../../widgets/home_categories_filter.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black54),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Image(
                image: AssetImage(ImageConstants.googleLogo),
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.greeting(),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  HomeTextWidget(text: TextConstant.name)
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Center(
              child: SignUpTextField(
                hintText: TextConstant.search,
                prefeixIcon: Icons.search,
                suffixIcon: Icons.change_circle_outlined,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .24,
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (_, index) {
                  return HomeBlueCard(
                    position: index.toDouble(),
                    headText: TextConstant.medicalChecks,
                    contText: TextConstant.cardText,
                    buttonText: TextConstant.checkNow,
                    image: ImageConstants.doctor,
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeTextWidget(
                    text: TextConstant.doctorSpeciality,
                  ),
                  CustomTextButton(
                    modelRoute: () {},
                    text: TextConstant.seeAll,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .88,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    homeCatergories(
                        ic: const Icon(
                          Icons.people_alt,
                          color: Colors.blue,
                        ),
                        t: TextConstant.general),
                    homeCatergories(
                        ic: ImageIcon(
                          AssetImage(
                            ImageConstants.tooth,
                          ),
                          color: Colors.blue,
                        ),
                        t: TextConstant.dentist),
                    homeCatergories(
                        ic: const Icon(Icons.remove_red_eye,
                            color: Colors.blue),
                        t: TextConstant.opthalmic),
                    homeCatergories(
                        ic: const Icon(Icons.fastfood, color: Colors.blue),
                        t: TextConstant.nutritionist),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0, top: 8),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    homeCatergories(
                        ic: ImageIcon(
                          AssetImage(ImageConstants.brain),
                          color: Colors.blue,
                        ),
                        t: TextConstant.neurologist),
                    homeCatergories(
                        ic: const Icon(
                          Icons.directions_walk,
                          color: Colors.blue,
                        ),
                        t: TextConstant.pediatric),
                    homeCatergories(
                        ic: ImageIcon(
                          AssetImage(ImageConstants.xray),
                          color: Colors.blue,
                        ),
                        t: TextConstant.radiologist),
                    homeCatergories(
                        ic: const Icon(
                          Icons.more_horiz_rounded,
                          color: Colors.blue,
                        ),
                        t: TextConstant.more),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeTextWidget(text: TextConstant.topDocs),
                  CustomTextButton(modelRoute: () {}, text: TextConstant.seeAll)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeCategoriesFilter(
                    text: TextConstant.all,
                    modelRoute1: model.setPressed,
                    modelRoute2: model.navigateToCategories,
                    colorCondition: model.pressed),
                HomeCategoriesFilter(
                    text: TextConstant.general,
                    modelRoute1: model.setPressed2,
                    modelRoute2: model.navigateToCategories,
                    colorCondition: model.pressed2),
                HomeCategoriesFilter(
                    text: TextConstant.dentist,
                    modelRoute1: model.setPressed3,
                    modelRoute2: model.navigateToCategories,
                    colorCondition: model.pressed3),
                HomeCategoriesFilter(
                    text: TextConstant.nutritionist,
                    modelRoute1: model.setPressed4,
                    modelRoute2: model.navigateToCategories,
                    colorCondition: model.pressed4),
              ],
            )
          ],
        ),
      ),
    );
  }
}
