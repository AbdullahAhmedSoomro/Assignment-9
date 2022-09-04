import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/app/app.locator.dart';
import 'package:medicaApp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  var hour = TimeOfDay.now().hour;
  greeting() {
    if (hour < 12) {
      return TextConstant.morning;
    }
    if (hour < 17) {
      return TextConstant.afternoon;
    }
    return TextConstant.evening;
  }

  var pressed = false;
  setPressed() {
    pressed = !pressed;
    if (pressed == true) {
      pressed2 = false;
      pressed3 = false;
      pressed4 = false;
    }
    notifyListeners();
  }

  var pressed2 = false;
  setPressed2() {
    pressed2 = !pressed2;
    if (pressed2 == true) {
      pressed = false;
      pressed3 = false;
      pressed4 = false;
    }
    notifyListeners();
  }

  var pressed3 = false;
  setPressed3() {
    pressed3 = !pressed3;
    if (pressed3 == true) {
      pressed2 = false;
      pressed = false;
      pressed4 = false;
    }
    notifyListeners();
  }

  var pressed4 = false;
  setPressed4() {
    pressed4 = !pressed4;
    if (pressed4 == true) {
      pressed2 = false;
      pressed3 = false;
      pressed = false;
    }
    notifyListeners();
  }

  final navService = locator<NavigationService>();

  void navigateToCategories() {
    navService.navigateTo(Routes.categoriesView);
  }
}
