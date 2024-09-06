import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map<String, String>> messages = [
    {
      'sender': 'bot',
      'message':
          'मुझे अपने सवाल बताएं और मैं उन्हें हल करने में आपकी मदद करूंगा। मुझसे पूछे कि परिवहन सेवाओं तक कैसे पहुंचें।',
      'time': '10:45 AM',
    },
    {
      'sender': 'user',
      'message': 'मैं परिवहन सेवाओं तक कैसे पहुंच सकता हूँ?',
      'time': '10:46 AM',
    },
    {
      'sender': 'bot',
      'message':
          'आप परिवहन सेवाओं तक HOMEPAGE > TRANSPORT SERVICES के माध्यम से पहुंच सकते हैं',
      'time': '10:47 AM',
    },
  ];

  final TextEditingController _controller = TextEditingController();

  Widget buildMessage(Map<String, String> messageData) {
    bool isUser = messageData['sender'] == 'user';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Align(
        alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          decoration: BoxDecoration(
            color: isUser ? Colors.grey[300] : Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment:
                isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                messageData['message']!,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                messageData['time']!,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HelpBot'),
        backgroundColor: Colors.lightGreen[400],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return buildMessage(messages[index]);
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'यहां अपना संदेश लिखें',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.send),
                  color: Colors.lightGreen[400],
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      setState(() {
                        messages.add({
                          'sender': 'user',
                          'message': _controller.text,
                          'time': 'Now',
                        });
                        _controller.clear();
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
