import 'package:flutter/material.dart';

class StudentNotificationsScreen extends StatelessWidget {
  const StudentNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      body: ListView.builder(
        itemCount: 3, // Placeholder for number of notifications
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.notification_important),
            title: Text('Notification ${index + 1}'),
            subtitle: const Text('Bus is near your stop!'),
          );
        },
      ),
    );
  }
}
