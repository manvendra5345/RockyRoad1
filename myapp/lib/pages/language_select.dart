/*import 'package:flutter/material.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  List<String> languages = [
    'English',
    'हिंदी (Hindi)',
    'বাংলা (Bengali)',
    'ગુજરાતી (Gujrati)',
    'తెలుగు (Telugu)',
    'मराठी (Marathi)',
    'தமிழ் (Tamil)',
    'ಕನ್ನಡ (Kannada)'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("WELCOME"),
        centerTitle: true,
      ),
      backgroundColor: Colors.lightGreen[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose a language to get started",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text("English"),
              trailing: Checkbox(
                value: true,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text("हिंदी (Hindi)"),
              trailing: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text("বাংলা (Bengali)"),
              trailing: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text("ગુજરાતી (Gujrati)"),
              trailing: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text("తెలుగు (Telugu)"),
              trailing: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text("मराठी (Marathi)"),
              trailing: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text("தமிழ் (Tamil)"),
              trailing: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: const Text("ಕನ್ನಡ (Kannada)"),
              trailing: Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/