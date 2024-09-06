import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Aggregationservice(title: 'Flutter Demo Home Page'),
    );
  }
}

class Aggregationservice extends StatefulWidget {
  Aggregationservice({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AggregationserviceState createState() => _AggregationserviceState();
}

class _AggregationserviceState extends State<Aggregationservice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/green_logo.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SPLIT BILLS FOR COMMON SERVICES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.info_outline),
                      Expanded(
                        child: Text(
                          'CREATE TRANSPORT GROUPS AND MANAGE PAYMENTS WITH UPI GATEWAYS',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Sort by Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  buildServiceCard(
                    'Tomato ISBT Gate',
                    '3 People',
                    'VIBHOR Transport Trucks',
                  ),
                  buildServiceCard(
                    'Rajeev Nagar Storage Group',
                    '10 People',
                    'The Confectionary - Stora...',
                  ),
                  buildServiceCard(
                    'Grains monthly',
                    '4 People',
                    'Rajesh and Sons - Transp...',
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '- END OF LIST -',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.mic),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildServiceCard(String title, String people, String description) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(Icons.people),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    people,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
