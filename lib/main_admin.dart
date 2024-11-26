import 'package:flutter/material.dart';
import 'screens/admin/admin_login_screen.dart';
import 'screens/admin/admin_signup_screen.dart';
import 'screens/admin/admin_forgot_password_screen.dart';
import 'screens/admin/admin_dashboard_screen.dart'; // Placeholder for dashboard

void main() {
  runApp(const AdminApp());
}

class AdminApp extends StatelessWidget {
  const AdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Module',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/admin_login',
      routes: {
        '/admin_login': (context) => const AdminLoginScreen(),
        '/admin_signup': (context) => const AdminSignupScreen(),
        '/admin_forgot_password': (context) => const AdminForgotPasswordScreen(),
        '/admin_dashboard': (context) => const Scaffold(
              body: Center(child: Text('Admin Dashboard - Coming Soon!')),
            ),
      },
    );
  }
}
