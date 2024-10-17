import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final Color backgroundColor;

  const InputField({
    super.key,
    required this.labelText,
    required this.icon,
    this.backgroundColor = const Color.fromARGB(255, 222, 217, 252), // Default light blue background
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(icon, color: Colors.black54),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.black54),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), // Rounded corners
          borderSide: BorderSide.none, // No border
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      ),
    );
  }
}
