import 'package:flutter/material.dart';

void main() {
  runApp(const cold_storage_specific());
}

// ignore: camel_case_types
class cold_storage_specific extends StatelessWidget {
  const cold_storage_specific({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: Container(
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.green[800],
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cold Storage Services',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                              'lib/images/Screenshot 2024-09-05 144749.png')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'myapplibimageskisan_dwaar_logo-removebg.png',
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 90,
                            child: IconButton(
                              icon: const Icon(Icons.chevron_left),
                              color: Colors.white,
                              onPressed: () {},
                              iconSize: 30,
                              padding: const EdgeInsets.all(8),
                              constraints: const BoxConstraints(),
                              //decoration: const BoxDecoration(
                              //color: Colors.black45,
                              //shape: BoxShape.circle,
                              //),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 90,
                            child: IconButton(
                              icon: const Icon(Icons.chevron_right),
                              color: Colors.white,
                              onPressed: () {},
                              iconSize: 30,
                              padding: const EdgeInsets.all(8),
                              constraints: const BoxConstraints(),
                              //decoration: const BoxDecoration(
                              //  color: Colors.black45,
                              //  shape: BoxShape.circle,
                              //),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Jolly Ice and Cold Storage',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Image.network(
                                  'https://oaidalleapiprodscus.blob.core.windows.net/private/org-BVbpSZmLndA7MfHIxv2ahIKS/user-IBY8IaMXtVn7IVIdZeyvjx16/img-g1x7uoBrHAFrccw2Ez4VRJWK.png?st=2024-09-05T07%3A57%3A59Z&se=2024-09-05T09%3A57%3A59Z&sp=r&sv=2024-08-04&sr=b&rscd=inline&rsct=image/png&skoid=d505667d-d6c1-4a0a-bac7-5c84a87759f8&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2024-09-04T21%3A27%3A30Z&ske=2024-09-05T21%3A27%3A30Z&sks=b&skv=2024-08-04&sig=HRnhH4ZX6A6wfK5LEsNadHx//g87vCyc7HWnLFGjMv4%3D',
                                  width: 30,
                                  height: 30,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'A 18, Lawrence Road Industrial Area, Delhi - 110035 (Next Britannia)',
                              style: TextStyle(
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                    color: Colors.green[700],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green[700],
                                  size: 16,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.green[700],
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '08105-086091',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Information',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '• Minimum Storage Weight: 30 Ton\n• Service Location: Uttar Pradesh\n• Transporters For Refrigerated Vehicle',
                              style: TextStyle(
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Payment Details',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Payment Mode: Cash',
                              style: TextStyle(
                                color: Colors.grey[700],
                              ),
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
      ),
    );
  }
}
