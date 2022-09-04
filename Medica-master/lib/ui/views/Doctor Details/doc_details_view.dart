import 'package:flutter/material.dart';
import 'package:medicaApp/ui/views/Doctor%20Details/doc_details_view_model.dart';
import 'package:medicaApp/ui/widgets/doc_image_container.dart';
import 'package:medicaApp/ui/widgets/blue_text.dart';
import 'package:medicaApp/ui/widgets/custom_text_button.dart';
import 'package:medicaApp/ui/widgets/home_icon_container.dart';
import 'package:stacked/stacked.dart';
import '../../../Constants/img.dart';
import '../../../Constants/txt.dart';
import '../../widgets/custom_Text_widget.dart';
import '../../widgets/custom_blue_button.dart';
import '../../widgets/small_text.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoctorsDetailViewModel>.nonReactive(
        viewModelBuilder: () => DoctorsDetailViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.black54),
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: CustomTextWidget(
                    text: TextConstant.docSheldon, fontSize: 20),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz_outlined),
                    ),
                  ),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DoctorImageContainer(image: ImageConstants.doctor),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextWidget(
                                      text: TextConstant.docSheldon,
                                      fontSize: 18),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    color: const Color(0xffe5e5e5),
                                    height: MediaQuery.of(context).size.height *
                                        .003,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child:
                                        SmallText(text: TextConstant.pediatric),
                                  ),
                                  SmallText(text: TextConstant.cityHosp),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .88,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                homeIconCont(
                                  icn: const Icon(
                                    Icons.groups,
                                    color: Colors.blue,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: BlueText(textt: TextConstant.fivek),
                                ),
                                SmallText(text: TextConstant.patients)
                              ],
                            ),
                            Column(
                              children: [
                                homeIconCont(
                                  icn: const Icon(
                                    Icons.timeline,
                                    color: Colors.blue,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                  ),
                                  child: BlueText(textt: TextConstant.tenPlus),
                                ),
                                SmallText(text: TextConstant.yearsExp)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                homeIconCont(
                                    icn: const Icon(
                                  Icons.star_half,
                                  color: Colors.blue,
                                )),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: BlueText(textt: TextConstant.decimal),
                                ),
                                SmallText(text: TextConstant.rating)
                              ],
                            ),
                            Column(
                              children: [
                                homeIconCont(
                                    icn: const Icon(
                                  Icons.reviews,
                                  color: Colors.blue,
                                )),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: BlueText(textt: TextConstant.randomNo),
                                ),
                                SmallText(text: TextConstant.reviews),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomTextWidget(text: TextConstant.aboutMe, fontSize: 18),
                    SizedBox(
                      child: Text(TextConstant.descriptionText),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: CustomTextWidget(
                          text: TextConstant.workingTime, fontSize: 18),
                    ),
                    Text(TextConstant.docTime),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextWidget(
                            text: TextConstant.capReviews, fontSize: 18),
                        CustomTextButton(
                            modelRoute: () {}, text: TextConstant.seeAll)
                      ],
                    ),
                    Center(
                      child: CustomBlueButton(
                        text: TextConstant.bookAppointment,
                        modelRoute: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
