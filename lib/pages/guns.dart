import 'package:flutter/material.dart';

class GunDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> gun = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(gun['name'] ?? 'Gun Detail'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(gun['image'] ?? '', width: 350),
              SizedBox(height: 20),
              Text(gun['name'] ?? '', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(gun['category'] ?? '', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              // Stats
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Table(
                  columnWidths: const {
                    0: IntrinsicColumnWidth(),
                    1: FixedColumnWidth(32),
                    2: IntrinsicColumnWidth(),
                    3: FixedColumnWidth(32),
                  },
                  children: [
                    TableRow(
                      children: [
                        Text('Damage:', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(gun['damage'] ?? ''),
                        Text('Fire Rate:', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(gun['fireRate'] ?? ''),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('Accuracy:', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(gun['accuracy'] ?? ''),
                        Text('Mobility:', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(gun['mobility'] ?? ''),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('Range:', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(gun['range'] ?? ''),
                        Text('Control:', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(gun['control'] ?? ''),
                      ],
                    ),
                  ],
                ),
              ),
              // Skins Section
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                alignment: Alignment.centerLeft,
                child: Text(
                  'SKINS',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: (gun['skins'] as List<String>).map((skinPath) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(skinPath, width: 100, height: 100),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget statRow(String label1, String? value1, String label2, String? value2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$label1: ', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(value1 ?? ''),
          SizedBox(width: 20),
          Text('$label2: ', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(value2 ?? ''),
        ],
      ),
    );
  }
}  