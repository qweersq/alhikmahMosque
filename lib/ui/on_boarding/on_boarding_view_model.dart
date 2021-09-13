import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masjidmobile/data/model/on_boarding_item.dart';
import 'package:masjidmobile/data/model/storage_preferences.dart';
import 'package:masjidmobile/utils/on_boarding_data_sources.dart';

final onBoardingViewModelProvider =
    Provider((_) => const OnBoardingViewModel());

class OnBoardingViewModel {
  const OnBoardingViewModel();

  List<OnBoardingItem> getItems() {
    return OnBoardingDataSources.getItems();
  }

  Future<void> saveState() async {
    return StoragePreferences.saveOnBoardingState();
  }
}
