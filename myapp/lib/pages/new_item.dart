import 'package:flutter/material.dart';
import 'package:myapp/themes/colors.dart';

class NewItemPage extends StatelessWidget {
  const NewItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        backgroundColor: const Color.fromARGB(255, 184, 255, 129),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'NEW ITEM',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Image.asset(
                  'assets/images/placeholder.png', // Replace with actual image path
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'eg. Wheat',
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Quantity',
                        hintText: 'eg. 150',
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  DropdownButton<String>(
                    value: 'kg',
                    items: <String>['kg', 'gm'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              DropdownButton<String>(
                value: 'Dals and Pulses',
                items: <String>['Dals and Pulses', 'Fruits', 'Vegetables']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              const SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('Storage Location'),
                  const SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Radio(
                        value: 'Self Stored',
                        groupValue: 'Self Stored',
                        onChanged: (_) {},
                      ),
                      const Text('Self Stored'),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Radio(
                        value: 'Partnered Storages',
                        groupValue: 'Partnered Storages',
                        onChanged: (_) {},
                      ),
                      const Text('Partnered Storages'),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  DropdownButton<String>(
                    value: 'Arihant Cold Storage',
                    items: <String>['Arihant Cold Storage', 'Other']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'eg. Condition, Quality, Health Disclaimers...',
                ),
                maxLines: 4,
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Price per',
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  DropdownButton<String>(
                    value: 'kg',
                    items: <String>['kg', 'gm'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                  const SizedBox(width: 10.0),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '74',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
                child: const Text('ADD PRODUCT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
