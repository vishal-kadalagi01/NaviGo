import 'package:flutter/material.dart';
import '../../services/feedback_service.dart';

class AdminViewFeedbackScreen extends StatelessWidget {
  const AdminViewFeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Two tabs: Student Feedback and Driver Feedback
      child: Scaffold(
        appBar: AppBar(
          title: const Text("View Feedback"),
          backgroundColor: const Color(0xFF800000), // Maroon color
          bottom: const TabBar(
            tabs: [
              Tab(text: "Student Feedback"),
              Tab(text: "Driver Feedback"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FeedbackList(userType: "student"), // Feedback from students
            FeedbackList(userType: "driver"),  // Feedback from drivers
          ],
        ),
      ),
    );
  }
}

class FeedbackList extends StatelessWidget {
  final String userType;

  const FeedbackList({required this.userType, super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FeedbackService().getFeedback(userType),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final feedbackDocs = snapshot.data!.docs;
        if (feedbackDocs.isEmpty) {
          return const Center(child: Text("No feedback available."));
        }

        return ListView.builder(
          itemCount: feedbackDocs.length,
          itemBuilder: (context, index) {
            final feedback = feedbackDocs[index];
            return Card(
              margin: const EdgeInsets.all(8.0),
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  feedback['feedbackText'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    Text("User ID: ${feedback['userId']}"),
                    Text("Date: ${feedback['timestamp']?.toDate() ?? 'Unknown'}"),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
