//
import 'views/authantication/login/view/login.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/constants/app/application_constants.dart';
import 'core/init/cache/locale_manager.dart';
import 'core/init/lang/language_manager.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/notifier/theme_notifier.dart';
import 'core/locators.dart';
import 'core/providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocatorInjector.setupLocator();
  await LocaleManager.preferencesInit();
  await EasyLocalization.ensureInitialized();

  runApp(
    MultiProvider(
      providers: ProviderInjector.instance.providers,
      child: EasyLocalization(
          child: MyApp(),
          supportedLocales: locator<LanguageManager>().supportedLocales,
          fallbackLocale: locator<LanguageManager>().enLocale,
          path: ApplicationConstants.LANG_ASSET_PATH),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      theme: Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
      home: LoginView(),
    );
  }
}
