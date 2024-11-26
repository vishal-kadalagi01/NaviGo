import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../shared/custom_textfield.dart';
import '../../shared/custom_button.dart';

class AdminSignupScreen extends StatefulWidget {
  const AdminSignupScreen({super.key});

  @override
  State<AdminSignupScreen> createState() => _AdminSignupScreenState();
}

class _AdminSignupScreenState extends State<AdminSignupScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController(text: '+91');
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  Future<void> _signupAdmin() async {
    if (_formKey.currentState?.validate() ?? false) {
      if (passwordController.text != confirmPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Passwords do not match')),
        );
        return;
      }

      try {
        // Create user in Firebase Auth
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        // Save admin details to Firestore
        await FirebaseFirestore.instance
            .collection('admins') // Ensure collection name is 'admins'
            .doc(userCredential.user?.uid)
            .set({
          'fullName': fullNameController.text.trim(),
          'email': emailController.text.trim(),
          'phoneNumber': phoneNumberController.text.trim(),
          'createdAt': FieldValue.serverTimestamp(),
        });

        // Navigate to Admin Login Screen
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Signup Successful'),
            content: const Text('Your admin account has been created.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                  Navigator.pushReplacementNamed(context, '/admin_login');
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      } on FirebaseAuthException catch (e) {
        // Show error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Signup failed: ${e.message}')),
        );
      } catch (e) {
        // Catch other errors
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Signup')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  label: 'Full Name',
                  controller: fullNameController,
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Full Name is required' : null,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  label: 'Email',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                        .hasMatch(value)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  label: 'Phone Number',
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Phone number is required' : null,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  label: 'Password',
                  controller: passwordController,
                  obscureText: !_passwordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    if (!RegExp(r'^(?=.*[A-Z])(?=.*\W)(?=.*[a-z]).{8,}$')
                        .hasMatch(value)) {
                      return 'Password must include uppercase, special char, and 8+ chars';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  label: 'Confirm Password',
                  controller: confirmPasswordController,
                  obscureText: !_confirmPasswordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _confirmPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _confirmPasswordVisible = !_confirmPasswordVisible;
                      });
                    },
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Confirm your password' : null,
                ),
                const SizedBox(height: 30),
                CustomButton(
                  label: 'Sign Up',
                  onPressed: _signupAdmin,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
