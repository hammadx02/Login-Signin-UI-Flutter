import 'package:flutter/material.dart';
import 'package:login_ui/screens/login_screen.dart';
import 'package:login_ui/screens/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        SignInScreen.id: (context) => const SignInScreen(),
      },
    );
  }
}
