import 'package:bloom/app/preferences/app_preferences.dart';
import 'package:flutter/material.dart';

import 'screen/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloom',

      theme: ThemeData(

        primarySwatch: Colors.grey,

      ),
      home: SplashScreen(),
    );
  }
}

