import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refri_mobile/App.dart';
import 'package:refri_mobile/data/repository/auth_repository_impl.dart';
import 'package:refri_mobile/data/repository/user_repository_impl.dart';
import 'package:refri_mobile/domain/repository/auth_repository.dart';
import 'package:refri_mobile/domain/repository/user_repository.dart';
import 'package:refri_mobile/presentation/login/login_view_model.dart';
import 'package:refri_mobile/presentation/mypage/mypage_view_model.dart';
import 'util/color_schemes.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await initializeDefault(widgetsBinding);

  final UserRepository userRepository = UserRepositoryImpl();
  final AuthRepository authRepository = AuthRepositoryImpl();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => MypageViewModel(userRepository)),
    ChangeNotifierProvider(create: (_) => LoginViewModel(authRepository)),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.system,
      home: const App(),
    );
  }
}

Future<void> initializeDefault(WidgetsBinding widgetsBinding) async {
  await Firebase.initializeApp();
}
