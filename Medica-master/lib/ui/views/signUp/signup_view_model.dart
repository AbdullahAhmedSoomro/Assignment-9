import 'package:medicaApp/app/app.locator.dart';
import 'package:medicaApp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  final navService = locator<NavigationService>();
  void navigateToLogin() {
    navService.navigateTo(Routes.loginView);
  }
}
