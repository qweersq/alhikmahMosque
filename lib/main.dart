import 'package:flutter/material.dart';

import 'data/resources/app_strings.dart';
import 'data/resources/app_themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.titleAppName,
      theme: AppThemes.mainTheme,
      home: const Scaffold(
        body: Center(
          child: Text(AppStrings.titleAppName),
        ),
      ),
    );
  }
}
