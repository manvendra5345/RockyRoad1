import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("My Cart"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.green[100],
        child: ListView(
          children: [
            CartItem(
              itemName: "Turmeric",
              price: "200.00",
              quantity: "4",
              pricePerItem: "50/item",
            ),
            CartItem(
              itemName: "Cloves",
              price: "100.00",
              quantity: "5",
              pricePerItem: "20/item",
            ),
            CartItem(
              itemName: "Ginger",
              price: "140.00",
              quantity: "2",
              pricePerItem: "70/item",
            ),
            OrderSummary(),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String itemName;
  final String price;
  final String quantity;
  final String pricePerItem;

  CartItem({
    required this.itemName,
    required this.price,
    required this.quantity,
    required this.pricePerItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            child: Image.asset("assets/turmeric.png"),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Samraat Farms - Chennai",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Quantity: $quantity",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                pricePerItem,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8.0),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Remove",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order Summary",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            "Order Details",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            "15 May 2024",
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16.0),
          OrderSummaryItem(
            label: "Sub Total",
            value: "440.00",
          ),
          OrderSummaryItem(
            label: "Tax (15%)",
            value: "66.00",
          ),
          OrderSummaryItem(
            label: "Shipping",
            value: "50.00",
          ),
          SizedBox(height: 16.0),
          OrderSummaryItem(
            label: "Total (Rs)",
            value: "512.00",
            isTotal: true,
          ),
        ],
      ),
    );
  }
}

class OrderSummaryItem extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  OrderSummaryItem({
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
