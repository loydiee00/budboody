import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String labelText;
  final IconData icon;
  final Color backgroundColor;

  const PasswordField({
    super.key,
    required this.labelText,
    required this.icon,
    this.backgroundColor = const Color.fromARGB(255, 217, 220, 252), // Default light blue background
  });

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.backgroundColor,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(widget.icon, color: Colors.black54),
        ),
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.black54),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), // Rounded corners
          borderSide: BorderSide.none, // No border
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.black54,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}
