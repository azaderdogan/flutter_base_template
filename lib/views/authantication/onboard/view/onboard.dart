import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../viewmodel/onboard_view_model.dart';

class Onboard extends StatelessWidget {
  late OnboardViewModel onboardViewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<OnboardViewModel>(
      viewModel: OnboardViewModel(),
      onPageBuilder: (context, value) => buildScaffold(),
      onModelReady: (model) {
        model.setContext(context);
        onboardViewModel = model;
      },
    );
  }

  Scaffold buildScaffold() => Scaffold();
}
