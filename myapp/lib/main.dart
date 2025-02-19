import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/landing_page.dart';
import 'pages/language_select.dart';
import 'pages/acc_creation.dart';
import 'pages/Forgot_password.dart';
import 'pages/cold_storage.dart';
import 'pages/cold_storage_specific.dart';
import 'pages/inventory.dart';
import 'pages/inventory_specific.dart';
import 'pages/inventory_specific_2.dart';
import 'pages/item_details.dart';
import 'pages/helbot.dart';
import 'pages/settings.dart';
import 'pages/notification.dart';
import 'pages/welcome.dart';
import 'pages/community_forum.dart';
import 'pages/summary_page.dart';
import 'pages/summary_page_2.dart';
import 'pages/summary_page_3.dart';
import 'pages/community_forum_2.dart';
import 'pages/new_item.dart';
import 'pages/mycart.dart';
import 'pages/order_details.dart';
import 'pages/Aggregation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(), // Start with LoginPage as the home
    );
  }
}

// Example of how each page might look with navigation to the next page

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingPage()));
          },
          child: const Text('Go to Landing'),
        ),
      ),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LanguageSelect()));
          },
          child: const Text('Select Language'),
        ),
      ),
    );
  }
}

// Continue this pattern for each page, here are just a few examples:

class LanguageSelect extends StatelessWidget {
  const LanguageSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountCreation()));
          },
          child: const Text('Create Account'),
        ),
      ),
    );
  }
}

class AccountCreation extends StatelessWidget {
  const AccountCreation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPassword()));
          },
          child: const Text('Forgot Password?'),
        ),
      ),
    );
  }
}

// ... and so on for each page, where each page has a button or interaction that leads to the next in your sequence