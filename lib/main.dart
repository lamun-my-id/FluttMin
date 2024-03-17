import 'package:flutter/material.dart';
import 'package:flutteradmin/screens/dashboard/ecommerce_screen.dart';
import 'package:flutteradmin/screens/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Admin Live Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ECommerceScreen(),
      routes: {
        "dashboard/ecommerce": (_) => const ECommerceScreen(),
        "profile": (_) => const ProfileScreen(),
      },
    );
  }
}
