import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../../../../core/extension/context_extension.dart';
import '../viewmodel/login_view_model.dart';

class LoginView extends StatelessWidget {
  late LoginViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onPageBuilder: (context, value) => buildScaffold(context),
      onModelReady: (model) {
        model.setContext(context);
        viewModel = model;
      },
    );
  }

  Scaffold buildScaffold(BuildContext context) => Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(enabledBorder: OutlineInputBorder()),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('data'),
            )
          ],
        )),
      );

  Text buildText(BuildContext context) {
    return Text(
      'Merhaba app ',
      style: context.textTheme.headline6,
    );
  }
}
