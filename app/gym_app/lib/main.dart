import 'package:flutter/material.dart';
import 'package:gym_navigation/gym_navigation.dart' as nav;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: nav.routerDelegate,
      routeInformationParser: nav.routeInformationParser,
      routeInformationProvider: nav.routeInformationProvider,
    );
  }
}
