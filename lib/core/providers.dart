import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'init/navigation/navigation_service.dart';
import 'init/notifier/theme_notifier.dart';
import 'locators.dart';

class ProviderInjector {
  static ProviderInjector? _instance;
  static ProviderInjector get instance {
    _instance ??= ProviderInjector._init();
    return _instance!;
  }

  ProviderInjector._init();
  List<SingleChildWidget> get providers {
    return independentServices + _dependentServices + _consumableServices;
  }

  List<SingleChildWidget> independentServices = [
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
    ),
    Provider.value(value: locator<NavigationService>()),
  ];

  List<SingleChildWidget> _dependentServices = [];

  List<SingleChildWidget> _consumableServices = [];
}
