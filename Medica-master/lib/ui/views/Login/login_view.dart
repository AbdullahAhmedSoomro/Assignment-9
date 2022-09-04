import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/img.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/Login/login_view_model.dart';
import 'package:medicaApp/ui/widgets/custom_Text_widget.dart';
import 'package:medicaApp/ui/widgets/custom_text_button.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/custom_blue_button.dart';
import '../../widgets/custom_grey_text.dart';
import '../../widgets/social_login_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                  child: Image(
                image: AssetImage(ImageConstants.loginLogo),
                height: MediaQuery.of(context).size.height * .3,
              )),
              CustomTextWidget(
                text: TextConstant.letsyouIn,
                fontSize: 35.0,
              ),
              SocilaLoginButton(
                text: TextConstant.loginFb,
                image: ImageConstants.fbLogo,
              ),
              SocilaLoginButton(
                text: TextConstant.loginGoogle,
                image: ImageConstants.googleLogo,
              ),
              SocilaLoginButton(
                text: TextConstant.loginApple,
                image: ImageConstants.appleLogo,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      color: Color(0xffe5e5e5),
                      height: MediaQuery.of(context).size.height * .003,
                    ),
                    CustomGreyText(text: TextConstant.or, leftRightPadding: 12),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      color: const Color(0xffe5e5e5),
                      height: MediaQuery.of(context).size.height * .003,
                    ),
                  ],
                ),
              ),
              CustomBlueButton(
                text: TextConstant.loginPassword,
                modelRoute: model.navigateToHome,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomGreyText(
                    text: TextConstant.dontHaveAnAccount,
                    leftRightPadding: 0,
                  ),
                  CustomTextButton(
                    modelRoute: model.navigateToSignUp,
                    text: TextConstant.signup,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
