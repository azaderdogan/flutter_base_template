import '../model/request_user_model.dart';
import '../service/login_service.dart';
import 'package:mobx/mobx.dart';
import '../../../../core/base/viewmodel/base_view_model.dart';
import 'package:flutter/material.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}
  LoginService loginService = LoginService();

  void checkLogin(String email, String password) {
    UserRequestModel userRequestModel = UserRequestModel();
    loginService.loginPost(userRequestModel);
  }
}
