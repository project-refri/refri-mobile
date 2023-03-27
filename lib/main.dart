import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:refri_mobile/App.dart';
import 'package:refri_mobile/presentation/login/login_screen.dart';
import 'util/color_schemes.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await initializeDefault(widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.system,
      home: LoginScreen(),
    );
  }
}

Future<void> initializeDefault(WidgetsBinding widgetsBinding) async {
  await Firebase.initializeApp();
}
