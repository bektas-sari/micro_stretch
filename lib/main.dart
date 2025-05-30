import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MicroStretchApp());

class MicroStretchApp extends StatelessWidget {
  const MicroStretchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MicroStretch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}
