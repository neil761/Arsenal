import 'package:flutter/material.dart';
import 'package:codm/pages/operator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  // Navigation labels
  final List<String> tabs = [
    'All',
    'Assault Rifle',
    'SMG',
    'LMG',
    'Sniper',
    'Shotgun',
  ];

  final List<Map<String, dynamic>> guns = [
    {
      'name': 'AK-47',
      'category': 'Assault Rifle',
      'image': 'assets/AK47.jpg',
      'damage': '33',
      'fireRate': '54',
      'accuracy': '78',
      'mobility': '60',
      'range': '86',
      'control': '89',
      'skins': [
        'assets/AK47.jpg', // Example skin, replace with real skin images
      ]
    },
    {
      'name': 'M4',
      'category': 'Assault Rifle',
      'image': 'assets/M4.jpg',
      'damage': '29',
      'fireRate': '68',
      'accuracy': '81',
      'mobility': '62',
      'range': '80',
      'control': '85',
      'skins': [
        'assets/M4.jpg',
      ]
    },
    {
      'name': 'QQ9',
      'category': 'SMG',
      'image': 'assets/QQ9.jpg',
      'damage': '25',
      'fireRate': '83',
      'accuracy': '42',
      'mobility': '102',
      'range': '46',
      'control': '42',
      'skins': [
        'assets/QQ9.jpg',
      ]
    },

    {
      'name': 'Fennec',
      'category': 'SMG',
      'image': 'assets/Fennec.jpg',
      'damage': '20',
      'fireRate': '90',
      'accuracy': '50',
      'mobility': '90',
      'range': '50',
      'control': '50',
      'skins': [
        'assets/Fennec.jpg',
      ]
    },

    {
      'name': 'S36',
      'category': 'LMG',
      'image': 'assets/LMG.jpg',
      'damage': '30',
      'fireRate': '60',
      'accuracy': '70',
      'mobility': '50',
      'range': '70',
      'control': '60',
      'skins': [
        'assets/LMG.jpg',
      ]
    },

    {
      'name': 'M4LMG',
      'category': 'LMG',
      'image': 'assets/Chopper.jpg',
      'damage': '35',
      'fireRate': '55',
      'accuracy': '65',
      'mobility': '45',
      'range': '65',
      'control': '55',
      'skins': [
        'assets/Chopper.jpg',
      ]
    },

    {
      'name': 'DL Q33',
      'category': 'Sniper',
      'image': 'assets/DLQ.jpg',
      'damage': '50',
      'fireRate': '40',
      'accuracy': '90',
      'mobility': '40',
      'range': '100',
      'control': '40',
      'skins': [
        'assets/DLQ.jpg',
      ]
    },

    {
      'name': 'Arctic .50',
      'category': 'Sniper',
      'image': 'assets/Arctic.jpg',
      'damage': '60',
      'fireRate': '30',
      'accuracy': '95',
      'mobility': '30',
      'range': '120',
      'control': '30',
      'skins': [
        'assets/Arctic.jpg',
      ]
    },

    {
      'name': 'BY15',
      'category': 'Shotgun',
      'image': 'assets/BY15.jpg',
      'damage': '100',
      'fireRate': '10',
      'accuracy': '50',
      'mobility': '30',
      'range': '30',
      'control': '20',
      'skins': [
        'assets/BY15.jpg',
      ]
    },

    {
      'name': 'KRM-262',
      'category': 'Shotgun',
      'image': 'assets/KRM.jpg',
      'damage': '80',
      'fireRate': '15',
      'accuracy': '40',
      'mobility': '20',
      'range': '25',
      'control': '15',
      'skins': [
        'assets/KRM.jpg',
      ]
    },
  ];

   List<Map<String, dynamic>> getFilteredGuns() {
    if (tabs[currentIndex] == 'All') {
      return guns;
    } else {
      return guns
          .where((gun) => gun['category'] == tabs[currentIndex])
          .toList();
    }
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Arsenal',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 75, 83, 32),
      ),
      body: Column(
        children: [
          // Guns and Operators Menu
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Guns',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ops');
                    },
                    child: Text(
                      'Operators',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Image Display Section
          Container(
            child: Image.asset('assets/arse.jpg'),
          ),

          // Navigation Bar: Text Only Buttons
          Container(
            color: Colors.blueGrey[900],
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(tabs.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: GestureDetector(
                      onTap: () => onTabTapped(index),
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          color: currentIndex == index ? Colors.amber : Colors.grey,
                          fontSize: 18,
                          fontWeight: currentIndex == index ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: getFilteredGuns().length,
              itemBuilder: (context, index) {
                final filtered = getFilteredGuns();
                return Card(
                  color: Colors.grey[800],
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Image.asset(
                      filtered[index]['image']!,
                      width: 100,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      filtered[index]['name']!,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    subtitle: Text(
                      filtered[index]['category']!,
                      style: TextStyle(color: Colors.grey[300]),
                    ),
                      trailing: TextButton(
                      child: Text('View',
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/gun',
                          arguments: filtered[index],
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
