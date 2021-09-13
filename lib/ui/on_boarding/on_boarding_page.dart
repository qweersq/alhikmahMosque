import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:masjidmobile/data/resources/app_strings.dart';

class OnBoardingPage extends HookWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppStrings.navOnBoarding),
      ),
    );
  }
}
