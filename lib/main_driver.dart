import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:navi_go/firebase_options.dart';
import 'screens/driver/driver_login_screen.dart';
import 'screens/driver/driver_signup_screen.dart';
import 'screens/driver/driver_forgot_password_screen.dart';
import 'screens/driver/driver_dashboard_screen.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NavGo - Driver',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/driver_login',
      routes: {
        '/driver_login': (context) => const DriverLoginScreen(),
        '/driver_signup': (context) => const DriverSignupScreen(),
        '/driver_forgot_password': (context) =>
            const DriverForgotPasswordScreen(),
        '/driver_dashboard': (context) => const DriverDashboardScreen(),
      },
    );
  }
}
