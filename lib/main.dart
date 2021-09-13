import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masjidmobile/ui/splash/splash_page.dart';

import 'data/resources/app_strings.dart';
import 'data/resources/app_themes.dart';
import 'ui/home/home_page.dart';
import 'ui/on_boarding/on_boarding_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.titleAppName,
      theme: AppThemes.mainTheme,
      initialRoute: AppStrings.navSplash,
      routes: {
        AppStrings.navSplash: (_) => const SplashPage(),
        AppStrings.navOnBoarding: (_) => const OnBoardingPage(),
        AppStrings.navHome: (_) => const HomePage(),
      },
    );
  }
}
