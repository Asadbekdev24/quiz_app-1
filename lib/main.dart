import 'package:flutter/material.dart';
import 'package:quiz_app/screens/startup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: TextTheme(
            bodyLarge: TextStyle(fontFamily: "Baloo 2"),
            bodyMedium: TextStyle(fontFamily: "Baloo 2"),
            bodySmall: TextStyle(fontFamily: "Baloo 2"),
          ),
          useMaterial3: true,
        ),
        home: StartupPage());
  }
}
