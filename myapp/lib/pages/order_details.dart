import 'package:flutter/material.dart';

class OrderDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Implement navigation back action
          },
        ),
        title: Text("Order Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Image.asset('assets/images/map.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildOrderStep(
                    icon: Icon(Icons.circle, color: Colors.green),
                    title: "Order Placement",
                    description:
                        "The seller or e-commerce platform receives the order.",
                  ),
                  _buildOrderStep(
                    icon: Icon(Icons.circle, color: Colors.green),
                    title: "Order Processing",
                    description: "The seller begins processing the order.",
                  ),
                  _buildOrderStep(
                    icon: Icon(Icons.circle, color: Colors.green),
                    title: "Packaging",
                    description: "The ordered items are securely packaged.",
                  ),
                  _buildOrderStep(
                    icon: Icon(Icons.circle, color: Colors.green),
                    title: "Shipping",
                    description:
                        "The packaged items are handed to the courier.",
                  ),
                  _buildOrderStep(
                    icon: Icon(Icons.circle, color: Colors.grey),
                    title: "Transit",
                    description: "The provider delivers the package.",
                  ),
                  _buildOrderStep(
                    icon: Icon(Icons.circle, color: Colors.grey),
                    title: "Delivery",
                    description:
                        "The package arrives at the destination address.",
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      // Implement download invoice action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text("Download Invoice"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderStep({
    required Widget icon,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
