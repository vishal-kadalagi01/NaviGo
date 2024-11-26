import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DriverDashboardScreen extends StatelessWidget {
  const DriverDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver Dashboard'),
        actions: [
          IconButton(
            onPressed: () async {
              try {
                // Sign out the user
                await FirebaseAuth.instance.signOut();

                // Navigate to the Driver Login Screen
                Navigator.pushReplacementNamed(context, '/driver_login');
              } catch (e) {
                // Handle errors during logout
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error signing out: $e')),
                );
              }
            },
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Center(
        child: const Text(
          'Welcome to the Driver Dashboard!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
