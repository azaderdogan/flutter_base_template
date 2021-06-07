import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../views/authantication/login/view/login.dart';
import '../../constants/navigation/navigation_constants.dart';
import '../../widgets/card/not_found_navigation_widget.dart';

class NavigationRoute {
  static NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case NavigationConstants.LOGIN_VIEW:
        return normalNavigate(LoginView());
        break;
      default:
        return normalNavigate(NotFoundWidget());
    }
  }
}

MaterialPageRoute normalNavigate(Widget view) {
  return MaterialPageRoute(builder: (context) => view);
}
