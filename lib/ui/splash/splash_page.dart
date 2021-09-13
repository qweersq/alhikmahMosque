import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masjidmobile/data/resources/app_colors.dart';
import 'package:masjidmobile/data/resources/app_images.dart';
import 'package:masjidmobile/data/resources/app_strings.dart';
import 'package:masjidmobile/data/resources/app_text_themes.dart';
import 'package:masjidmobile/ui/splash/splash_view_model.dart';

class SplashPage extends HookWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final splashViewModel = useProvider(splashViewModelProvider);

    useEffect(() {
      Future.delayed(const Duration(seconds: 2)).then(
        (value) {
          splashViewModel
              .getNamedRoute()
              .then((nav) => Navigator.of(context).popAndPushNamed(nav));
        },
      );
    }, []);

    return Scaffold(
      backgroundColor: AppColors.colorPrimary,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const Image(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.splashBackground),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(image: AssetImage(AppImages.appLogo)),
              Text(
                AppStrings.textMasjid.toUpperCase(),
                style: const TextStyle(
                  fontFamily: AppTextThemes.montserratFont,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 10,
                ),
              ),
              Text(
                AppStrings.textMasjidName.toUpperCase(),
                style: const TextStyle(
                  fontFamily: AppTextThemes.museoFont,
                  fontSize: 32.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
