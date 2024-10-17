import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // Import your existing LoginScreen
import 'screens/bus_schedule_screen.dart'; // Import the new BusScheduleScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => const LoginScreen(), // LoginScreen as the initial screen
        '/bus_schedule': (context) => const BusScheduleScreen(), // Bus Schedule screen route
      },
    );
  }
}
