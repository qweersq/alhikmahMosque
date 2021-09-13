import 'package:masjidmobile/data/model/on_boarding_item.dart';

import '../data/resources/app_images.dart';
import '../data/resources/app_strings.dart';

class OnBoardingDataSources {
  const OnBoardingDataSources._();

  static List<OnBoardingItem> getItems() {
    return List.of(
      {
        const OnBoardingItem(
          image: AppImages.onBoardingIllustration1,
          title: AppStrings.textHeaderOnBoarding1,
          description: AppStrings.textBodyOnBoarding1,
        ),
        const OnBoardingItem(
          image: AppImages.onBoardingIllustration2,
          title: AppStrings.textHeaderOnBoarding2,
          description: AppStrings.textBodyOnBoarding2,
        ),
        const OnBoardingItem(
          image: AppImages.onBoardingIllustration3,
          title: AppStrings.textHeaderOnBoarding3,
          description: AppStrings.textBodyOnBoarding3,
        ),
      },
    );
  }
}
