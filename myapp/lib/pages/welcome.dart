import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/50'), // Placeholder for user image
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome', style: TextStyle(fontSize: 18)),
                Text('Sunil Sharma (Farmer)', style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Promotion/Carousel Section
              Card(
                color: Colors.lightGreen[200],
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(Icons.agriculture, size: 50, color: Colors.orange),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kisan Rath',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Mobile App by Agriculture Minister\nFacilitate transportation of foodgrains and perishables',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Our Services Grid
              const Text(
                'Our Services',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                childAspectRatio: 0.8,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildServiceTile(Icons.group_work, 'Aggregation'),
                  _buildServiceTile(Icons.store, 'Retail Shops'),
                  _buildServiceTile(Icons.ac_unit, 'Cold Storages'),
                  _buildServiceTile(Icons.forum, 'Community Forum'),
                  _buildServiceTile(Icons.local_shipping, 'Transport'),
                  _buildServiceTile(Icons.inventory, 'Inventory'),
                  _buildServiceTile(Icons.shopping_cart, 'Orders'),
                  _buildServiceTile(Icons.chat, 'Chatbot'),
                ],
              ),
              const SizedBox(height: 20),

              // Market Trends Section
              const Text(
                'Market Trends',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  _buildMarketTrendTile('Wheat', '-4.24%', Colors.red),
                  _buildMarketTrendTile('Tomato', '+32.24%', Colors.green),
                  _buildMarketTrendTile('Parsley', '-0.73%', Colors.red),
                  _buildMarketTrendTile('Onion', '+32.24%', Colors.green),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.mic),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  // Helper methods for building widgets

  Widget _buildServiceTile(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.green[100],
          child: Icon(icon, color: Colors.green),
        ),
        const SizedBox(height: 8),
        Text(label,
            textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildMarketTrendTile(String item, String value, Color color) {
    return Card(
      color: color.withOpacity(0.1),
      child: ListTile(
        title: Text(item),
        trailing: Text(
          value,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
