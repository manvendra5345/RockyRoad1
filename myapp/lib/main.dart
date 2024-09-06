import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'package:myapp/images/images.dart';
import 'pages/landing_page.dart';
import 'pages/language_select.dart';
import 'pages/acc_creation.dart';
import 'pages/Forgot_password.dart';
import 'pages/cold_storage.dart';
import 'pages/cold_storage_specific.dart';
import 'pages/inventory_specific.dart';
import 'pages/item_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LanguageSelectionScreen(), // Call the LoginPage widget
    );
  }
}
