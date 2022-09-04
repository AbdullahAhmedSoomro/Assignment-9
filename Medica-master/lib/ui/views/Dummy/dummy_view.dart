import 'package:flutter/material.dart';
import 'package:medicaApp/ui/views/Dummy/dummy_view_model.dart';
import 'package:stacked/stacked.dart';

class DummyView extends StatelessWidget {
  const DummyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DummyViewModel>.nonReactive(
      viewModelBuilder: () => DummyViewModel(),
      builder: (context, model, child) => const Scaffold(
        body: Center(
          child: Text('This is Dummy to Support Bottom Nav Bar Funtionality'),
        ),
      ),
    );
  }
}
