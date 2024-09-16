import 'package:flutter/material.dart';
import 'package:myapp/pages/login_page.dart';

class LanguageSelectionPage2 extends StatefulWidget {
  const LanguageSelectionPage2({Key? key}) : super(key: key);

  @override
  State<LanguageSelectionPage2> createState() => _LanguageSelectionPageState2();
}

class _LanguageSelectionPageState2 extends State<LanguageSelectionPage2> {
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Navigate back to previous screen
            Navigator.pop(context);
          },
        ),
        title: const Text('WELCOME'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Handle menu actions
            },
          ),
        ],
      ),
      backgroundColor: Colors.lightGreen[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Choose a language to get started',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  final language = languages[index];
                  return ListTile(
                    title: Text(language),
                    trailing: Radio<String>(
                      value: language,
                      groupValue: selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          selectedLanguage = value;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle language selection
                if (selectedLanguage != null) {
                  // Navigate to the next screen based on selected language
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                  // Show an error message
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please select a language.'),
                    ),
                  );
                }
              },
              child: const Icon(Icons.subdirectory_arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}

final languages = [
  'English',
  'हिंदी (Hindi)',
  'বাংলা (Bengali)',
  'ગુજરાતી (Gujrati)',
  'తెలుగు (Telugu)',
  'मराठी (Marathi)',
  'தமிழ் (Tamil)',
  'ಕನ್ನಡ (Kannada)',
];
