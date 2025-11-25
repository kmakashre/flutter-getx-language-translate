import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_screen.dart';
import 'languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX i18n Demo',
      // 1. Pass the Translations class
      translations: Languages(),
      // 2. Set the initial locale (default language)
      locale: const Locale('en', 'US'),
      // 3. Set a fallback locale if a translation isn't found
      fallbackLocale: const Locale('en', 'US'),

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}