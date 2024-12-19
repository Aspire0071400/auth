import 'package:auth/screens/forgot_screen.dart';
import 'package:auth/screens/login_screen.dart';
import 'package:auth/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            primary: const Color(0xff374FFF),
            secondary: const Color(0xff039FFF)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/signup_screen': (context) => SignupScreen(),
        '/forgot_screen': (context) => ForgotScreen(),
      },
    );
  }
}
