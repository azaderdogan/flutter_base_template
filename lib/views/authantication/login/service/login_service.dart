import 'package:dio/dio.dart';

import '../model/request_user_model.dart';

class LoginService {
  Dio dio = Dio();
  void loginPost(UserRequestModel userRequestModel) {
    final response = dio.post('auth/login', data: userRequestModel);
    
  }
}
