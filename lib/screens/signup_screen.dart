import 'package:auth/utils/responsive.dart';
import 'package:auth/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _repassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height(context) * 0.1),
                Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                    height: getOrientation(context) == Orientation.portrait
                        ? 50
                        : 30),
                CustomTextField(
                  height: 50,
                  width: getOrientation(context) == Orientation.portrait
                      ? width(context) * 0.8
                      : width(context) * 0.6,
                  controller: _nameController,
                  obscureText: false,
                  hint: 'Name',
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.perm_identity_rounded),
                  ).copyWith(),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  height: 50,
                  width: getOrientation(context) == Orientation.portrait
                      ? width(context) * 0.8
                      : width(context) * 0.6,
                  controller: _emailController,
                  hint: 'Email',
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                  ).copyWith(),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  height: 50,
                  width: getOrientation(context) == Orientation.portrait
                      ? width(context) * 0.8
                      : width(context) * 0.6,
                  controller: _passController,
                  hint: 'Password',
                  obscureText: true,
                  obscuringCharacter: '#',
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password_rounded),
                  ).copyWith(),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  height: 50,
                  width: getOrientation(context) == Orientation.portrait
                      ? width(context) * 0.8
                      : width(context) * 0.6,
                  controller: _repassController,
                  obscureText: true,
                  obscuringCharacter: '#',
                  hint: 'Re-type Password',
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.safety_check_rounded),
                  ).copyWith(),
                ),
                const SizedBox(height: 20),
                Container(
                  width: getOrientation(context) == Orientation.portrait
                      ? width(context) * 0.6
                      : width(context) * 0.4,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary
                    ]),
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                        overlayColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.secondary),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        backgroundColor:
                            const WidgetStatePropertyAll(Colors.transparent)),
                    onPressed: () {
                      //Next Navigation
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    Expanded(child: Divider()),
                    Text(
                      ' OR ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Expanded(child: Divider()),
                    SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  width: getOrientation(context) == Orientation.portrait
                      ? width(context) * 0.5
                      : width(context) * 0.3,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary
                    ]),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(1.5),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            style: ButtonStyle(
                                overlayColor: WidgetStatePropertyAll(
                                    Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withAlpha(50)),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                backgroundColor:
                                    const WidgetStatePropertyAll(Colors.white)),
                            child: const Text(
                              'Existing user? Login now',
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height(context) * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
