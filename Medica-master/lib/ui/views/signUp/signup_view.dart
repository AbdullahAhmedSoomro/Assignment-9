import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/img.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/signUp/signup_view_model.dart';
import 'package:medicaApp/ui/widgets/signup_Text_field.dart';
import 'package:medicaApp/ui/widgets/custom_Text_widget.dart';
import 'package:medicaApp/ui/widgets/custom_checkbox.dart';
import 'package:medicaApp/ui/widgets/custom_text_button.dart';
import 'package:medicaApp/ui/widgets/custom_blue_button.dart';
import 'package:medicaApp/ui/widgets/mini_social_login_Button.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/custom_grey_text.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.reactive(
      viewModelBuilder: () => SignupViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: Image(image: AssetImage(ImageConstants.signUpLogo)),
              ),
              CustomTextWidget(text: TextConstant.createNew, fontSize: 35.0),
              SignUpTextField(
                  hintText: TextConstant.email,
                  prefeixIcon: Icons.email_rounded,
                  suffixIcon: null),
              SignUpTextField(
                  hintText: TextConstant.password,
                  prefeixIcon: Icons.lock,
                  suffixIcon: Icons.remove_red_eye),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomCheckBox(),
                    Text(
                      TextConstant.rememberMe,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              CustomBlueButton(text: TextConstant.signup, modelRoute: () {}),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: CustomGreyText(
                    text: TextConstant.orContwith, leftRightPadding: 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MiniSocialLoginButton(
                    modelRoute: () {},
                    image: ImageConstants.googleLogo,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12),
                    child: MiniSocialLoginButton(
                      modelRoute: () {},
                      image: ImageConstants.fbLogo,
                    ),
                  ),
                  MiniSocialLoginButton(
                    modelRoute: () {},
                    image: ImageConstants.appleLogo,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomGreyText(
                        text: TextConstant.alreadyHaveAnAccount,
                        leftRightPadding: 0),
                    CustomTextButton(
                        modelRoute: model.navigateToLogin,
                        text: TextConstant.signin)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
