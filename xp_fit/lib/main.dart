import 'package:flutter/material.dart';
import 'package:xp_fit/UI/pages/auth/login.page.dart';

import 'package:xp_fit/UI/pages/auth/register.page.dart';
import 'package:xp_fit/UI/pages/home.page.dart';
import 'package:xp_fit/UI/pages/nutrition.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => LoginPage(),
        "/nutrition": (context) => NutritionPage(),
        "/registration": (context) => RegisterPage(),
        "/home": (context) => HomePage(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
        scaffoldBackgroundColor: Colors.transparent,
      ),
      initialRoute: "/nutrition",
    );
  }
}
