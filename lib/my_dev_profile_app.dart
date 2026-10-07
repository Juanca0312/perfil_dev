import 'package:flutter/material.dart';
import 'package:perfil_dev/presentation/pages/profile_page.dart';

class MyDevProfileApp extends StatefulWidget {
  const MyDevProfileApp({super.key});

  @override
  State<MyDevProfileApp> createState() => _MyDevProfileAppState();
}

class _MyDevProfileAppState extends State<MyDevProfileApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: ProfilePage(onToggleTheme: _toggleTheme),
    );
  }
}
