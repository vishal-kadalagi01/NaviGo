import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../shared/custom_textfield.dart';
import '../../shared/custom_button.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  Future<void> _loginAdmin() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        Navigator.pushReplacementNamed(context, '/admin_dashboard');
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed: ${e.message}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Login'),
      ),
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
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Password is required' : null,
                ),
                const SizedBox(height: 30),
                CustomButton(
                  label: 'Login',
                  onPressed: _loginAdmin,
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/admin_forgot_password');
                  },
                  child: const Text('Forgot Password?'),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not registered?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/admin_signup');
                      },
                      child: const Text('Signup here'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
