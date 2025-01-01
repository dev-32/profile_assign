import 'package:flutter/material.dart';
import 'package:profile_assign/constants/theme.dart';
import 'package:profile_assign/screens/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assign',
      theme: AppThemeData.appTheme,
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}
