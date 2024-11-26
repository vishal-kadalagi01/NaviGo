import 'package:flutter/material.dart';
import '../../services/feedback_service.dart';

class DriverViewFeedbackScreen extends StatelessWidget {
  const DriverViewFeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Feedback"),
        backgroundColor: const Color(0xFF800000), // Maroon color
      ),
      body: StreamBuilder(
        stream: FeedbackService().getFeedback("student"),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final feedbackDocs = snapshot.data!.docs;
          return ListView.builder(
            itemCount: feedbackDocs.length,
            itemBuilder: (context, index) {
              final feedback = feedbackDocs[index];
              return ListTile(
                title: Text(feedback['feedbackText']),
                subtitle: Text(feedback['timestamp'].toDate().toString()),
              );
            },
          );
        },
      ),
    );
  }
}
