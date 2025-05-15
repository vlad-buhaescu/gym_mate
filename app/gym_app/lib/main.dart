import 'package:flutter/material.dart';
import 'package:gym_navigation/gym_navigation.dart' as nav;

void main() {
  nav.initialize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
    routeInformationProvider: nav.routeInformationProvider,
    routeInformationParser: nav.routeInformationParser,
    routerDelegate: nav.routerDelegate,
  );
}
