# GetX Internationalization Demo

This Flutter project demonstrates how to implement **internationalization (i18n)** using **GetX**.  
The app supports switching between **English (en_US)** and **Urdu (ur_PK)** at runtime.

---

## 🚀 Features
- Multi-language support using **GetX**
- Real-time language change (no restart required)
- Simple UI with buttons to change language
- Organized translation structure

---

## 📂 Project Structure

lib/
├── main.dart
├── home_screen.dart
└── languages.dart

yaml
Copy code

---

## 🧩 Installation

1. Add the GetX dependency in `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  get:
Run the command:

bash
Copy code
flutter pub get
🛠 Code Explanation
1️⃣ main.dart
dart
Copy code
return GetMaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'GetX i18n Demo',
  translations: Languages(),           // Register translations
  locale: const Locale('en', 'US'),    // Default language
  fallbackLocale: const Locale('en', 'US'),
  home: const HomeScreen(),
);
2️⃣ home_screen.dart
dart
Copy code
ListTile(
  title: Text('message'.tr),  // Translate text using .tr
  subtitle: Text('name'.tr),
);
Language buttons:

dart
Copy code
Get.updateLocale(const Locale('en', 'US'));  // English
Get.updateLocale(const Locale('ur', 'PK'));  // Urdu
3️⃣ languages.dart
dart
Copy code
class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'message': "What is your name?",
      'name': 'Karishma Makashre',
    },
    'ur_PK': {
      'message': 'آپ کا نام کیا ہے؟',
      'name': 'کرشمہ مکاشرے',
    },
  };
}
▶️ Run the App
Use the following command:

bash
Copy code
flutter run
🌐 Add More Languages
In languages.dart, add a new language code:

dart
Copy code
'es_IN': {
  'message': 'आपका नाम क्या है?',
  'name': 'करिश्मा मकश्रे',
},
Add button:

dart
Copy code
OutlinedButton(
  onPressed: () {
    Get.updateLocale(const Locale('es', 'IN'));
  },
  child: const Text('Hindi'),
)
📜 License
This project is free to use and modify.

👤 Author
Karishma Makashre

👍 If this helped you, don’t forget to ⭐ star the repository!

yaml
Copy code

---

Let me know if you want to add **screenshots, badges, or additional languages** to README!
