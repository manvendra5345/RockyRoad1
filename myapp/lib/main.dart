import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'package:myapp/images/images.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Aggregationservice(
        title: '',
      ), // Call the LoginPage widget
    );
  }
}
