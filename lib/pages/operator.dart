import 'package:flutter/material.dart';
import 'package:codm/pages/operator.dart';

class Operator extends StatefulWidget {
  @override
  _OperatorState createState() => _OperatorState();
}

class _OperatorState extends State<Operator> {
  int currentIndex = 0;

  // Navigation labels
  final List<String> tabs = [
    'All',
    'Mythic Operators',
    'Legendary Operators',
  ];

  final List<Map<String, String>> operators = [
    // Legendary (2)
    {'name': 'Alias 2', 'image': 'assets/alias2.jpg', 'category': 'Legendary'},
    {'name': 'Chip 2', 'image': 'assets/chip2.jpg', 'category': 'Legendary'},
    {'name': 'Dame 2', 'image': 'assets/dame2.jpg', 'category': 'Legendary'},
    {'name': 'Darkfio 2', 'image': 'assets/dark2.jpg', 'category': 'Legendary'},
    {'name': 'Fire 2', 'image': 'assets/fire2.jpg', 'category': 'Legendary'},
    {'name': 'Fox 2', 'image': 'assets/fox2.jpg', 'category': 'Legendary'},
    {'name': 'Ghost 2', 'image': 'assets/ghost2.jpg', 'category': 'Legendary'},
    {'name': 'Gun 2', 'image': 'assets/gun2.jpg', 'category': 'Legendary'},
    {'name': 'Kai 2', 'image': 'assets/kai2.jpg', 'category': 'Legendary'},
    {'name': 'Mace 2', 'image': 'assets/mace2.jpg', 'category': 'Legendary'},
    {'name': 'Nik 2', 'image': 'assets/nik2.jpg', 'category': 'Legendary'},
    {'name': 'Nyx 2', 'image': 'assets/nyx2.jpg', 'category': 'Legendary'},
    {'name': 'Out 2', 'image': 'assets/out2.jpg', 'category': 'Legendary'},
    {'name': 'Ph 2', 'image': 'assets/ph2.jpg', 'category': 'Legendary'},
    {'name': 'Pia 2', 'image': 'assets/pia2.jpg', 'category': 'Legendary'},
    {'name': 'Price 2', 'image': 'assets/price2.jpg', 'category': 'Legendary'},
    {'name': 'Ray 2', 'image': 'assets/ray2.jpg', 'category': 'Legendary'},
    {'name': 'Reap 2', 'image': 'assets/reap2.jpg', 'category': 'Legendary'},
    {'name': 'Rich 2', 'image': 'assets/rich2.jpg', 'category': 'Legendary'},
    {'name': 'Sir 2', 'image': 'assets/sir2.jpg', 'category': 'Legendary'},
    {'name': 'Soph 2', 'image': 'assets/soph2.jpg', 'category': 'Legendary'},
    {'name': 'Spec 2', 'image': 'assets/spec2.jpg', 'category': 'Legendary'},
    {'name': 'Tem 2', 'image': 'assets/tem2.jpg', 'category': 'Legendary'},
    {'name': 'Fio 2', 'image': 'assets/fio2.jpg', 'category': 'Legendary'},
    {'name': 'Ciph 2', 'image': 'assets/ciph2.jpg', 'category': 'Legendary'},
    // Mythic (4)
    {'name': 'Alias 4', 'image': 'assets/alias4.jpg', 'category': 'Mythic'},
    {'name': 'Chip 4', 'image': 'assets/chip4.jpg', 'category': 'Mythic'},
    {'name': 'Dame 4', 'image': 'assets/dame4.jpg', 'category': 'Mythic'},
    {'name': 'Darkfio 4', 'image': 'assets/dark4.jpg', 'category': 'Mythic'},
    {'name': 'Fire 4', 'image': 'assets/fire4.jpg', 'category': 'Mythic'},
    {'name': 'Fox 4', 'image': 'assets/fox4.jpg', 'category': 'Mythic'},
    {'name': 'Ghost 4', 'image': 'assets/ghost4.jpg', 'category': 'Mythic'},
    {'name': 'Gun 4', 'image': 'assets/gun4.jpg', 'category': 'Mythic'},
    {'name': 'Kai 4', 'image': 'assets/kai4.jpg', 'category': 'Mythic'},
    {'name': 'Mace 4', 'image': 'assets/mace4.jpg', 'category': 'Mythic'},
    {'name': 'Nik 4', 'image': 'assets/nik4.jpg', 'category': 'Mythic'},
    {'name': 'Nyx 4', 'image': 'assets/nyx4.jpg', 'category': 'Mythic'},
    {'name': 'Out 4', 'image': 'assets/out4.jpg', 'category': 'Mythic'},
    {'name': 'Ph 4', 'image': 'assets/ph4.jpg', 'category': 'Mythic'},
    {'name': 'Pia 4', 'image': 'assets/pia4.jpg', 'category': 'Mythic'},
    {'name': 'Price 4', 'image': 'assets/price4.jpg', 'category': 'Mythic'},
    {'name': 'Ray 4', 'image': 'assets/ray4.jpg', 'category': 'Mythic'},
    {'name': 'Reap 4', 'image': 'assets/reap4.jpg', 'category': 'Mythic'},
    {'name': 'Rich 4', 'image': 'assets/rich4.jpg', 'category': 'Mythic'},
    {'name': 'Sir 4', 'image': 'assets/sir4.jpg', 'category': 'Mythic'},
    {'name': 'Soph 4', 'image': 'assets/soph4.jpg', 'category': 'Mythic'},
    {'name': 'Spec 4', 'image': 'assets/spec4.jpg', 'category': 'Mythic'},
    {'name': 'Tem 4', 'image': 'assets/tem4.jpg', 'category': 'Mythic'},
    {'name': 'Fio 4', 'image': 'assets/fio4.jpg', 'category': 'Mythic'},
    {'name': 'Ciph 4', 'image': 'assets/ciph4.jpg', 'category': 'Mythic'},
    {'name': 'Pia 4', 'image': 'assets/pia4.jpg', 'category': 'Mythic'},
  ];

  List<Map<String, String>> getFilteredOperators() {
    if (tabs[currentIndex] == 'All') {
      return operators;
    } else if (tabs[currentIndex] == 'Mythic Operators') {
      return operators.where((op) => op['category'] == 'Mythic').toList();
    } else if (tabs[currentIndex] == 'Legendary Operators') {
      return operators.where((op) => op['category'] == 'Legendary').toList();
    } else {
      return operators;
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
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                      child: Text(
                        'Guns',
                        style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                ),
                Container(
                    width: 140,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Operators',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            ),
          ),

          Container(
            child: Image.asset('assets/operator.jpg'),
          ),

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
            child: GridView.builder(
              padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemCount: getFilteredOperators().length,
              itemBuilder: (context, index) {
                final op = getFilteredOperators()[index];
                return Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          op['image']!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        op['name']!,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
