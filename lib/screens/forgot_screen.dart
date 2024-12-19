import 'package:auth/utils/responsive.dart';
import 'package:auth/widgets/button.dart';
import 'package:auth/widgets/textfield.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatelessWidget {
  ForgotScreen({super.key});
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/forgot.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Forgot Password',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email_rounded),
                    ).copyWith(),
                    width: getOrientation(context) == Orientation.portrait
                        ? width(context) * 0.8
                        : width(context) * 0.5,
                    height: 50,
                    hint: 'Enter email'),
                const SizedBox(height: 20),
                CustomButton(
                    width: getOrientation(context) == Orientation.portrait
                        ? width(context) * 0.8
                        : width(context) * 0.5,
                    text: 'Reset',
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Reset link has been sent.')));
                    }),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
