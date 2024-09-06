import 'package:flutter/material.dart';

void main() {
  runApp(const ColdStoragePage());
}

class ColdStoragePage extends StatelessWidget {
  const ColdStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              const Color(0xFF00A651), // Green color as in the header
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cold Storage Services'),
              CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/logo.png'), // Replace with your logo image asset
                radius: 18,
              ),
            ],
          ),
        ),
        body: Container(
          color: const Color(0xFFF0FFF0), // Light green background
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Search Bar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here..',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Sort Dropdown
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint: const Text('Sort by capacity'),
                    items: <String>['High to Low', 'Low to High']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {
                      // Sorting logic here
                    },
                    icon: const Icon(Icons.arrow_drop_down),
                  ),
                ),
                const SizedBox(height: 20),
                // List of Cold Storages
                Expanded(
                  child: ListView(
                    children: [
                      _buildStorageCard(
                        'Jolly Ice and Cold Storage',
                        'Lawrence Road Industrial Area, Delhi',
                        'images/jolly.jpg', // Replace with actual image assets
                        4.2,
                      ),
                      _buildStorageCard(
                        'Arihant Cold Storage',
                        'Okhla Industrial Area, Delhi',
                        'images/arihant.jpg',
                        4.8,
                      ),
                      _buildStorageCard(
                        'Hindustan Ice & Cold Storage',
                        'Lawrence Road, Delhi',
                        'images/hindustan.jpg',
                        4.1,
                      ),
                      _buildStorageCard(
                        'Lotus Cold Industry',
                        'Shahdara, Delhi',
                        'images/lotus.jpg',
                        3.8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStorageCard(
      String title, String location, String imagePath, double rating) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child:
              Image.asset(imagePath, width: 60, height: 60, fit: BoxFit.cover),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(location),
        trailing: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            rating.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
