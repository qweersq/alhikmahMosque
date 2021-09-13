import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masjidmobile/data/resources/app_strings.dart';
import 'package:masjidmobile/ui/on_boarding/on_boarding_view_model.dart';
import 'package:masjidmobile/ui/on_boarding/on_boarding_widget.dart';

class OnBoardingPage extends HookWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = usePageController(initialPage: 0);
    final onBoardingViewModel = useProvider(onBoardingViewModelProvider);
    final screenRes = onBoardingViewModel.getItems();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PageView.builder(
          controller: _pageController,
          itemCount: screenRes.length,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (index) {},
          itemBuilder: (_, index) => OnBoardingWidget(
            item: screenRes[index],
            skipPressed: () {
              onBoardingViewModel.saveState().then((_) {
                Navigator.of(context).popAndPushNamed(AppStrings.navHome);
              });
            },
            nextPressed: () {
              if (index >= screenRes.length - 1) {
                onBoardingViewModel.saveState().then((_) {
                  Navigator.of(context).popAndPushNamed(AppStrings.navHome);
                });
                return;
              }

              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
        ),
      ),
    );
  }
}
