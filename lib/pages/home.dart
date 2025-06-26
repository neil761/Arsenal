import 'package:flutter/material.dart';
import 'package:codm/pages/operator.dart';
import 'package:codm/pages/guns.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of gun types
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        appBar: AppBar(
          title: Text(
            'Arsenal',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 75, 83, 32),
        ),
        body: Column(
          children: [
            // Guns / Operators Switch
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 52, 52, 52),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Selected Tab - Guns
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Guns',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Not Selected - Operators
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Operators()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Operators',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Arsenal Image
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Image.asset(
                'assets/arse.jpg',
                width: 350,
              ),
            ),

            // Gun Type Tabs
            Container(
              color: const Color.fromARGB(255, 52, 52, 52),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.yellow,
                labelColor: Colors.yellow,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(text: 'Assault Rifle'),
                  Tab(text: 'SMG'),
                  Tab(text: 'LMG'),
                  Tab(text: 'Sniper'),
                  Tab(text: 'Shotgun'),
                ],
              ),
            ),

            // Tab View Content
            Expanded(
              child: TabBarView(
                children: [
                  // Assault Rifle Tab
                  ListView(
                    padding: EdgeInsets.all(16),
                    children: [
                      _gunCard('AK-47', 'assets/AK47.jpg'),
                      _gunCard('M4', 'assets/AK117.jpg'),
                      _gunCard('M13', 'assets/M13.jpg'),
                      _gunCard('Kilo', 'assets/Kilo.jpg'),
                      _gunCard('Grau', 'assets/Grau.jpg'),
                      _gunCard('Oden', 'assets/Oden.jpg'),
                    ],
                  ),
                  // SMG Tab
                  ListView(
                    padding: EdgeInsets.all(16),
                    children: [
                      _gunCard('QQ9', 'assets/QQ9.jpg'),
                      _gunCard('Fennec', 'assets/Fennec.jpg'),
                      _gunCard('VMP', 'assets/VMP.jpg'),
                      _gunCard('Switchblade', 'assets/Switchblade.jpg'),
                      _gunCard('Bizon', 'assets/Bizon.jpg'),
                    ],
                  ),
                  // LMG Tab
                  ListView(
                    padding: EdgeInsets.all(16),
                    children: [
                      _gunCard('RPD', 'assets/RPD.jpg'),
                      _gunCard('LMG', 'assets/LMG.jpg'),
                      _gunCard('Chopper', 'assets/Chopper.jpg'),
                    ],
                  ),
                  // Sniper Tab
                  ListView(
                    padding: EdgeInsets.all(16),
                    children: [
                      _gunCard('DLQ', 'assets/DLQ.jpg'),
                      _gunCard('Locus', 'assets/Locus.jpg'),
                      _gunCard('Rytec', 'assets/Rytec.jpg'),
                      _gunCard('EBR', 'assets/EBR.jpg'),
                      
                    ],
                  ),
                  // Shotgun Tab
                  ListView(
                    padding: EdgeInsets.all(16),
                    children: [
                      _gunCard('BY15', 'assets/BY15.jpg'),
                      _gunCard('KRM', 'assets/KRM.jpg'),
                      _gunCard('HS04', 'assets/HS04.jpg'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Placeholder for each tab's content
  Widget _buildTabContent(String label) {
    return Center(
      child: Text(
        '$label content here',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  Widget _gunCard(String name, String imagePath) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 52, 52, 52),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          // Handle gun selection
        },
      ),
    );
  }
}
