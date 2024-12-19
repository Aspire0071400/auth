import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final String obscuringCharacter;
  final InputDecoration decoration;
  final String hint;
  final double height;
  final double width;

  const CustomTextField({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    required this.decoration,
    required this.height,
    required this.width,
    required this.hint,
  });

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  late bool passVisible;

  @override
  void initState() {
    super.initState();
    passVisible = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: passVisible,
        obscuringCharacter: widget.obscuringCharacter,
        decoration: widget.decoration.copyWith(
          hintText: widget.hint,
          suffixIcon: widget.obscureText
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      passVisible = !passVisible;
                    });
                  },
                  icon: Icon(
                    passVisible
                        ? Icons.visibility
                        : Icons.visibility_off_rounded,
                  ),
                )
              : null,
          hintStyle: const TextStyle(color: Colors.grey),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 3),
          ),
        ),
      ),
    );
  }
}
