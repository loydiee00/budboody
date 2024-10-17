import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'bus_schedule_screen.dart';
import '../widgets/input_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/password_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  image: AssetImage('lib/icons/Screenshot 2024-10-17 224506.png'),
                  fit: BoxFit.cover, // Ensures the image covers the entire background
                ),
              ),
            ),
          ),
          // Logo Image at the top center
         // Logo Image at the top center
Align(
  alignment: Alignment.topCenter,
  child: Padding(
    padding: const EdgeInsets.only(top: 40), // Adjust this value to change the vertical position
    child: Image.asset(
      'lib/icons/logo_new.png',
      height: 200, // Adjust the height as needed
      width: 200,  // Add a width for the logo
    ),
  ),
),

          // Main Content
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: 0.7, // Extend the height to 70% of the screen height
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20), // Adjusted to create space at the top
                    Text(
                      "Welcome back!",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Log in to your account.",
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
                      backgroundColor: Color.fromARGB(255, 245, 228, 200), // Corrected background color
                    ),
                    const SizedBox(height: 15),
                    const PasswordField(
                      labelText: 'Enter your password',
                      icon: Icons.lock,
                      backgroundColor: Color.fromARGB(255, 245, 228, 200), // Corrected background color
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 20,
                              child: Checkbox(value: false, onChanged: (bool? value) {}),
                            ),
                            const Text('Remember me', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                          ),
                          child: const Text("Forgot password?"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: CustomButton(
                        text: "Log In",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BusScheduleScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUpScreen()),
                        );
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Sign Up",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
