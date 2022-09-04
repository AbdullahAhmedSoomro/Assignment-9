// ignore: file_names
import 'package:medicaApp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:medicaApp/app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final navService = locator<NavigationService>();

  void navigateToSignUp() {
    navService.navigateTo(Routes.signupView);
  }

  void navigateToHome() {
    navService.navigateTo(Routes.btmNavView);
  }
}
