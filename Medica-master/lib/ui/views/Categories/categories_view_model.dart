import 'package:medicaApp/app/app.locator.dart';
import 'package:medicaApp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CategoriesViewModel extends BaseViewModel {
  final navService = locator<NavigationService>();

  void navigateToDetails() {
    navService.navigateTo(Routes.doctorDetailsView);
  }
}
