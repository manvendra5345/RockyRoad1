import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Notifications'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Mark all read'),
                DropdownButton<String>(
                  value: 'Sort by time',
                  items: const [
                    DropdownMenuItem(
                      value: 'Sort by time',
                      child: Text('Sort by time'),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          const NotificationItem(
            title: 'Alert: Your driver is on the way to pick the product.',
            time: '3m ago',
          ),
          const NotificationItem(
            title: 'Alert: Product delivered to the consumer.',
            time: '5m ago',
          ),
          const NotificationItem(
            title: 'Alert: You have 2 new messages from.',
            time: '2h ago',
          ),
          const NotificationItem(
            title: 'Alert: New market prices',
            time: '3h ago',
          ),
          const NotificationItem(
            title: 'Alert: Your produce has reached the cold storage unit',
            time: '5h ago',
          ),
          const NotificationItem(
            title: 'Alert: Successful payment',
            time: '7h ago',
          ),
          const NotificationItem(
            title: 'Alert: Unsuccessful payment',
            time: 'Yesterday',
          ),
          const SizedBox(height: 16.0),
          const Center(child: Text('- END OF LIST -')),
          const SizedBox(height: 32.0),
          Center(
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.mic),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key, required this.title, required this.time})
      : super(key: key);

  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(time),
        ],
      ),
    );
  }
}
