import 'package:flutter/material.dart';
import 'package:flutteradmin/screens/charts/advanched_chart_screen.dart';
import 'package:flutteradmin/screens/charts/basic_chart_screen.dart';
import 'package:flutteradmin/screens/dashboard/ecommerce_screen.dart';
import 'package:flutteradmin/screens/profile/profile_screen.dart';
import 'package:flutteradmin/screens/ui_elements/accordion_screen.dart';

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
        "charts/basic_chart": (_) => const BasicChartScreen(),
        "charts/advanched_chart": (_) => const AdvanchedChartScreen(),
        "ui_elements/accordion": (_) => const AccordionScreen(),
      },
    );
  }
}
