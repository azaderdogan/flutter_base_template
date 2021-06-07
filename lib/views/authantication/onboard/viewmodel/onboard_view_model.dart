import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/viewmodel/base_view_model.dart';

part 'onboard_view_model.g.dart';

class OnboardViewModel = _OnboardViewModelBase with _$OnboardViewModel;

abstract class _OnboardViewModelBase extends BaseViewModel with Store {
  @override
  void init() {
    
  }

  @override
  void setContext(BuildContext context) => this.context = context;
}
