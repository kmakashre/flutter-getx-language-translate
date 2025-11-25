import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX i18n Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {

                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English'),
                ),
                const SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('ur', 'PK'));
                  },
                  child: const Text('Urdu'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}