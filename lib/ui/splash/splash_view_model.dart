import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masjidmobile/data/model/storage_preferences.dart';
import 'package:masjidmobile/data/resources/app_strings.dart';

final splashViewModelProvider =
    Provider<SplashViewModel>((_) => const SplashViewModel());

class SplashViewModel {
  const SplashViewModel();

  Future<String> getNamedRoute() async {
    final result = await StoragePreferences.readOnBoardingState();
    return result ? AppStrings.navHome : AppStrings.navOnBoarding;
  }
}
