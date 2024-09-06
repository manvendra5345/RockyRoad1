import 'package:flutter/material.dart';

class InventoryPage2 extends StatelessWidget {
  const InventoryPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Sunil Sharma's Inventory",
            style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search here',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Overview', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Self-Stored'),
                Text('Externally Stored'),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                _buildInventoryItem(
                    'Moong Dal', '₹105.00', 'assets/moong_dal.jpg', 4.9),
                _buildInventoryItem(
                    'Almonds', '₹350.00', 'assets/almonds.jpg', 4.5),
                _buildInventoryItem(
                    'Whole Grain', '₹270.00', 'assets/whole_grain.jpg', 4.7),
                _buildInventoryItem(
                    'Pistachio', '₹210.00', 'assets/pistachio.jpg', 4.8),
                _buildInventoryItem(
                    'Sesame Seeds', '', 'assets/sesame_seeds.jpg', 0),
                _buildOutOfStockItem(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add voice input functionality
        },
        child: const Icon(Icons.mic),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget _buildInventoryItem(
      String name, String price, String imagePath, double rating) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(price),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    Text(rating.toString()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOutOfStockItem() {
    return const Card(
      child: Center(
        child: Text(
          'OUT OF STOCK',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
