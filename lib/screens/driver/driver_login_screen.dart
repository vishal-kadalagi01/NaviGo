import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../shared/custom_textfield.dart';
import '../../shared/custom_button.dart';
import '../../shared/theme.dart'; // Import AppTheme for consistent theming

class DriverLoginScreen extends StatefulWidget {
  const DriverLoginScreen({super.key});

  @override
  _DriverLoginScreenState createState() => _DriverLoginScreenState();
}

class _DriverLoginScreenState extends State<DriverLoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  Future<void> _loginDriver() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        Navigator.pushReplacementNamed(context, '/driver_dashboard');
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed: ${e.message}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver Login'),
        backgroundColor: AppTheme.primaryColor, // Maroon theme
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome Back, Driver!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.primaryColor,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Please log in to access your dashboard.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 32),
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
                      color: AppTheme.primaryColor,
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
                  onPressed: _loginDriver,
                  color: AppTheme.primaryColor,
                  textColor: Colors.white,
                ),
                const SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/driver_forgot_password');
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: AppTheme.primaryColor,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/driver_signup');
                    },
                    child: const Text(
                      'Don\'t have an account? Sign Up',
                      style: TextStyle(
                        color: AppTheme.primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
