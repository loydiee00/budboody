import 'package:flutter/material.dart';
import '../widgets/input_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/password_field.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image filling the entire screen including top corners
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/icons/Screenshot 2024-10-17 224506.png'), // Update with your background image path
                  fit: BoxFit.cover, // Ensures the image covers the entire background
                ),
              ),
            ),
          ),
          // Logo Image at the top center
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 40), // Adjust this value to change the vertical position of the logo
              child: Image.asset(
                'lib/icons/logo_new.png',
                height: 200, // Adjust the height as needed
                width: 200,  // Adjust the width as needed
              ),
            ),
          ),
          // Main Content
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 600, // Adjust this height as needed
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 30), // Further reduced space from the top
                  Text(
                    "Welcome!",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5), // Reduced space between title and subtitle
                  Text(
                    "Register your account.",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const InputField(
                    labelText: 'Enter your full name',
                    icon: Icons.person,
                    backgroundColor: Color.fromARGB(255, 245, 228, 200),
                  ),
                  const SizedBox(height: 15),
                  const InputField(
                    labelText: 'Enter your email',
                    icon: Icons.email,
                    backgroundColor: Color.fromARGB(255, 245, 228, 200),
                  ),
                  const SizedBox(height: 15),
                  const PasswordField(
                    labelText: 'Enter your password',
                    icon: Icons.lock,
                    backgroundColor: Color.fromARGB(255, 245, 228, 200),
                  ),
                  const SizedBox(height: 15),
                  const PasswordField(
                    labelText: 'Confirm your password',
                    icon: Icons.lock,
                    backgroundColor: Color.fromARGB(255, 245, 228, 200),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Sign Up",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Go back to login
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0), 
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: "Have an account? ",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 110, 108, 108),
                          ),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Log In",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0), 
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
