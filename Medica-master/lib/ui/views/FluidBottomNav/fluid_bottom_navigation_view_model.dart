import 'package:medicaApp/ui/views/Dummy/dummy_view.dart';
import 'package:medicaApp/ui/views/Home/home_view.dart';
import 'package:stacked/stacked.dart';

class BottomNavigationViewModel extends BaseViewModel {
  int selected = 0;
  List pages = const [
    HomeView(),
    DummyView(),
    DummyView(),
    DummyView(),
    DummyView()
  ];
  void onItemTapped(int index) {
    selected = index;
    notifyListeners();
  }
}
