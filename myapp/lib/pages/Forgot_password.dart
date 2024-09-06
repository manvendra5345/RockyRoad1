import 'package:flutter/material.dart';

void main() {
  runApp(const ForgotPasswordPage());
}

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF45B649), Color(0xFFDCE35B)], // Green gradient
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Back Icon
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      // Add back functionality here
                    },
                  ),
                ),
                const SizedBox(height: 20),
                // Forgot Password Text
                const Text(
                  'FORGOT PASSWORD',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                // Lock Icon
                const Icon(
                  Icons.lock_outline,
                  size: 80,
                  color: Colors.red,
                ),
                const SizedBox(height: 20),
                // Trouble Logging In? Text
                const Text(
                  'Trouble Logging in?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 10),
                // Instruction Text
                const Text(
                  'Enter your email and we\'ll send you a link to reset your password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 30),
                // Email TextField
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                // Reset Password Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add reset password functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      backgroundColor: Colors.teal,
                    ),
                    child: const Text('Reset Password',
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
                const SizedBox(height: 20),
                // Return to Login Page Button
                TextButton(
                  onPressed: () {
                    // Add return to login page functionality here
                  },
                  child: Text(
                    'Return to Login Page',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green[800],
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
