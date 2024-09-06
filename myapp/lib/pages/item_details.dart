import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ItemDetailPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: const Text('Item Detail'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: PageView(
                        children: [
                          Image.asset('assets/moong_dal.jpg',
                              fit: BoxFit.cover),
                          Image.asset('assets/moong_dal_2.jpg',
                              fit: BoxFit.cover),
                          Image.asset('assets/moong_dal_3.jpg',
                              fit: BoxFit.cover),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.circle, size: 8, color: Colors.green),
                        SizedBox(width: 4),
                        Icon(Icons.circle_outlined,
                            size: 8, color: Colors.grey),
                        SizedBox(width: 4),
                        Icon(Icons.circle_outlined,
                            size: 8, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Moong Dal',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite_border),
                          onPressed: () {
                            // Handle favorite action
                          },
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Moong Dal is a healthy choice as it has a high fibre content and a negligible amount of cholesterol and fats.',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildWeightOption('500 g'),
                        _buildWeightOption('1 kg'),
                        _buildWeightOption('2 kg'),
                        _buildWeightOption('5 kg'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Sold by: bb Popular Brand',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Protein Content: 24 g per 100 g serving',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 16),
                    const Text(
                      'Benefits:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    _buildBenefitText(
                        'It is rich in Vitamin A, B, C and E and also in many minerals including iron, calcium, and potassium.'),
                    _buildBenefitText(
                        'It is considered a healthy weight loss food as it is a low-fat food rich in proteins and fiber.'),
                    _buildBenefitText(
                        'It helps to lower the high cholesterol level in the blood system.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeightOption(String weight) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        side: const BorderSide(color: Colors.green),
      ),
      onPressed: () {
        // Handle weight option select
      },
      child: Text(
        weight,
        style: const TextStyle(color: Colors.green, fontSize: 16),
      ),
    );
  }

  Widget _buildBenefitText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
