import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masjidmobile/data/model/on_boarding_item.dart';
import 'package:masjidmobile/data/resources/app_colors.dart';
import 'package:masjidmobile/data/resources/app_strings.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    Key? key,
    required this.item,
    required this.skipPressed,
    required this.nextPressed,
  }) : super(key: key);

  final OnBoardingItem item;
  final VoidCallback skipPressed;
  final VoidCallback nextPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              width: 300.0,
              height: 300.0,
              image: AssetImage(item.image),
            ),
            const SizedBox(height: 36.0),
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 24.0),
            Text(
              item.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextButton(
              onPressed: skipPressed,
              child: Text(
                AppStrings.textSkip.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            TextButton(
              onPressed: nextPressed,
              child: Text(
                AppStrings.textNext.toUpperCase(),
                style: const TextStyle(
                  color: AppColors.colorPrimary,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
