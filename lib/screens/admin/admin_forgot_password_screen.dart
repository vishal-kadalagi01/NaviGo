import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../shared/custom_textfield.dart';
import '../../shared/custom_button.dart';

class AdminForgotPasswordScreen extends StatefulWidget {
  const AdminForgotPasswordScreen({super.key});

  @override
  _AdminForgotPasswordScreenState createState() =>
      _AdminForgotPasswordScreenState();
}

class _AdminForgotPasswordScreenState extends State<AdminForgotPasswordScreen> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> _resetPassword() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(
          email: emailController.text.trim(),
        );

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Password reset email sent.')),
        );
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.message}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forgot Password')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  label: 'Email',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Email is required' : null,
                ),
                const SizedBox(height: 30),
                CustomButton(
                  label: 'Reset Password',
                  onPressed: _resetPassword,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
