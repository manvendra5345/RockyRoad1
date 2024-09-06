import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sunil Sharma\'s Inventory'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Inventory Summary',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Inventory Summary Bar Chart
                    SizedBox(
                      height: 200,
                      child: BarChart(
                        BarChartData(
                          groups: [
                            BarChartGroupData(
                              x: 0,
                              barRods: [
                                BarRodData(
                                  y: 100,
                                  colors: [Colors.blue],
                                ),
                              ],
                              labels: BarLabelData(label: 'Wheat'),
                            ),
                            BarChartGroupData(
                              x: 1,
                              barRods: [
                                BarRodData(
                                  y: 480,
                                  colors: [Colors.blue],
                                ),
                              ],
                              labels: BarLabelData(label: 'Rice'),
                            ),
                            BarChartGroupData(
                              x: 2,
                              barRods: [
                                BarRodData(
                                  y: 10,
                                  colors: [Colors.blue],
                                ),
                              ],
                              labels: BarLabelData(label: 'Parsley'),
                            ),
                          ],
                          axisY: Axis(
                            labelFormatter: (value) => '${value.toInt()}',
                            labelStyle: const TextStyle(fontSize: 10),
                            labelRotation: 0,
                            labelPadding: const EdgeInsets.only(top: 10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Stored With Partners Chart
                    const Text(
                      '45% STORED WITH PARTNERS',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text('Partner\'s Storage'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text('Self-Stored'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
