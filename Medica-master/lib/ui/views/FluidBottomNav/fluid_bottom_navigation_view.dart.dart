import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/FluidBottomNav/fluid_bottom_navigation_view_model.dart';
import 'package:stacked/stacked.dart';

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavigationViewModel>.reactive(
      viewModelBuilder: () => BottomNavigationViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: model.pages.elementAt(model.selected),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                ),
                label: TextConstant.home),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.calendar_month_outlined,
                ),
                label: TextConstant.appointment),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.history,
                ),
                label: TextConstant.history),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.receipt_outlined,
                ),
                label: TextConstant.articles),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.person_outline_outlined,
                ),
                label: TextConstant.profile),
          ],
          currentIndex: model.selected,
          onTap: model.onItemTapped,
        ),
      ),
    );
  }
}
