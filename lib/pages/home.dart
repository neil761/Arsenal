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
      'damage': '47',
      'fireRate': '55',
      'accuracy': '67',
      'mobility': '62',
      'range': '72',
      'control': '44',
      'skins': [
        {'name': 'Mythic - Radiance', 'image': 'assets/ak47(5).jpg'},
      ]
    },
    {
      'name': 'AK117',
      'category': 'Assault Rifle',
      'image': 'assets/AK117.jpg',
      'damage': '45',
      'fireRate': '70',
      'accuracy': '65',
      'mobility': '68',
      'range': '60',
      'control': '60',
      'skins': [
        {'name': 'Mythic - Memento Mori', 'image': 'assets/ak117(5).jpg'},
        {'name': 'Legendary - Dazzling Rhythm', 'image': 'assets/ak117(3).jpg'},
      ]
    },
    {
      'name': 'QQ9', 
      'category': 'SMG', 
      'image': 'assets/QQ9.jpg',
      'damage': '25',
      'fireRate': '88',
      'accuracy': '49',
      'mobility': '90',
      'range': '45',
      'control': '77',
      'skins': [
        {'name': 'Mythic - Dual Kinetics', 'image': 'assets/qq9(5).jpg'},
        {'name': 'Legendary - Moonlight', 'image': 'assets/qq9(2).jpg'},
        {'name': 'Legendary - Albatross', 'image': 'assets/qq9(3).jpg'},
        {'name': 'Legendary - Quantum Flash', 'image': 'assets/qq9(4).jpg'},
      ]
    },
    {
      'name': 'Fennec', 
      'category': 'SMG', 
      'image': 'assets/Fennec.jpg',
      'damage': '22',
      'fireRate': '111',
      'accuracy': '45',
      'mobility': '95',
      'range': '38',
      'control': '33',
      'skins': [
        {'name': 'Mythic - Ascended', 'image': 'assets/fennec(5).jpg'},
        {'name': 'Legendary - Venom Coil', 'image': 'assets/fennec3.jpg'},
      ]
    },
    {
      'name': 'M4', 
      'category': 'Assault Rifle', 
      'image': 'assets/M4.jpg',
      'damage': '42',
      'fireRate': '77',
      'accuracy': '72',
      'mobility': '68',
      'range': '65',
      'control': '67',
      'skins': [
        {'name': 'Legendary - Thermal Shroud', 'image': 'assets/m4(1).jpg'},
        {'name': 'Legendary - Void Implosion', 'image': 'assets/m4(2).jpg'},
        {'name': 'Legendary - Black Gold Royal', 'image': 'assets/m4(4).jpg'},
      ]
    },
    {
      'name': 'DL Q33', 
      'category': 'Sniper', 
      'image': 'assets/DLQ.jpg',
      'damage': '85',
      'fireRate': '27',
      'accuracy': '95',
      'mobility': '35',
      'range': '98',
      'control': '45',
      'skins': [
        {'name': 'Mythic - Lotus Flames', 'image': 'assets/dlq(6).jpg'},
        {'image': 'assets/dlq(2).jpg'},
        {'image': 'assets/dlq(3).jpg'},
        {'image': 'assets/dlq(4).jpg'},
        {'image': 'assets/dlq(5).jpg'},
        { 'image': 'assets/dlq6.jpg'},
      ]
    },
    {
      'name': 'Oden', 
      'category': 'Assault Rifle', 
      'image': 'assets/Oden.jpg',
      'damage': '50',
      'fireRate': '60',
      'accuracy': '70',
      'mobility': '60',
      'range': '70',
      'control': '60',
      'skins': [
        {'name': 'Mythic - Divine Smite', 'image': 'assets/oden(5).jpg'},
        {'name': 'Legendary - Gripped Chaos', 'image': 'assets/oden1.jpg'},
        {'name': 'Legendary - Lethal Riptide', 'image': 'assets/oden2.jpg'},
      ]
    },
    {
      'name': 'Kilo 141', 
      'category': 'Assault Rifle', 
      'image': 'assets/Kilo.jpg',
      'damage': '41',
      'fireRate': '68',
      'accuracy': '69',
      'mobility': '74',
      'range': '62',
      'control': '65',
      'skins': [
        {'name': 'Mythic - Demon Song', 'image': 'assets/kilo(5).jpg'},
        {'name': 'Legendary - Nova Gold', 'image': 'assets/kilo2.jpg'},
        {'name': 'Legendary - Legion' + 's Spear', 'image': 'assets/kilo3.jpg'},
        {'name': 'Legendary - Nano Katana', 'image': 'assets/kilo4.jpg'},
      ]
    },
    {
      'name': 'M13', 
      'category': 'Assault Rifle', 
      'image': 'assets/M13.jpg',
      'damage': '40',
      'fireRate': '88',
      'accuracy': '56',
      'mobility': '80',
      'range': '60',
      'control': '60',
      'skins': [
        {'name': 'Mythic - Morning Star', 'image': 'assets/m13(6).jpg'},
        {'name': 'Legendary - Liminal Flare', 'image': 'assets/m13(2).jpg'},
        {'name': 'Legendary - Carrot Cutie', 'image': 'assets/m13(3).jpg'},
        {'name': 'Legendary - Risen Shadow', 'image': 'assets/m13(4).jpg'},
        {'name': 'Legendary - Glory of Shadows', 'image': 'assets/m13(5).jpg'},
      ]
    },
    {
      'name': 'Holger',
      'category': 'LMG',
      'image': 'assets/Holger.jpg',
      'damage': '40',
      'fireRate': '65',
      'accuracy': '60',
      'mobility': '60',
      'range': '60',
      'control': '60',
      'skins': [
        {'name': 'Mythic - Dark Frontier', 'image': 'assets/holger(5).jpg'},
        {'name': 'Legendary - Risen Deep', 'image': 'assets/holger2.jpg'},
        {'name': 'Legendary - Jacked Lantern', 'image': 'assets/holger3.jpg'},
        {'name': 'Legendary - Ice Majesty', 'image': 'assets/holger4.jpg'},
      ]
    },
    {
      'name': 'Switchblade',
      'category': 'SMG',
      'image': 'assets/Switchblade.jpg',
      'damage': '35',
      'fireRate': '90',
      'accuracy': '55',
      'mobility': '85',
      'range': '50',
      'control': '60',
      'skins': [
        {'name': 'Mythic - Neon Legend', 'image': 'assets/switchblade(5).jpg'},
        {'name': 'Legendary - Pisces', 'image': 'assets/switchblade(2).jpg'},
      ]
    },
    {
      'name': 'Rytec',
      'category': 'Sniper',
      'image': 'assets/Rytec.jpg',
      'damage': '80',
      'fireRate': '40',
      'accuracy': '80',
      'mobility': '50',
      'range': '90',
      'control': '60',
      'skins': [
        {'name': 'Mythic - Nautilus', 'image': 'assets/rytec(5).jpg'},
        { 'image': 'assets/rytec(2).jpg'},
        {'name': 'Legendary - Happy Hammer', 'image': 'assets/rytec2.jpg'},
        { 'image': 'assets/rytec3.jpg'},
      ]
    },
    {
      'name': 'KRM-262',
      'category': 'Shotgun',
      'image': 'assets/KRM.jpg',
      'damage': '100',
      'fireRate': '18',
      'accuracy': '30',
      'mobility': '70',
      'range': '20',
      'control': '45',
      'skins': [
        {'name': 'Default', 'image': 'assets/krm1.jpg'},
        {'name': 'Skin 2', 'image': 'assets/krm2.jpg'},
      ]
    },
    {
      'name': 'Locus',
      'category': 'Sniper',
      'image': 'assets/Locus.jpg',
      'damage': '90',
      'fireRate': '30',
      'accuracy': '85',
      'mobility': '55',
      'range': '95',
      'control': '65',
      'skins': [
        {'name': 'Default', 'image': 'assets/locus(1).jpg'},
        {'name': 'Skin 2', 'image': 'assets/locus(2).jpg'},
        {'name': 'Skin 3', 'image': 'assets/locus2.jpg'},
        {'name': 'Skin 4', 'image': 'assets/locus3.jpg'},
        {'name': 'Skin 5', 'image': 'assets/locus4.jpg'},
        {'name': 'Skin 6', 'image': 'assets/locus5.jpg'},
        {'name': 'Skin 7', 'image': 'assets/locus6.jpg'},
      ]
    },
    {
      'name': 'Bizon',
      'category': 'SMG',
      'image': 'assets/Bizon.jpg',
      'damage': '30',
      'fireRate': '80',
      'accuracy': '60',
      'mobility': '80',
      'range': '55',
      'control': '65',
      'skins': [
        {'name': 'Default', 'image': 'assets/bizon2.jpg'},
        {'name': 'Skin 2', 'image': 'assets/bizon3.jpg'},
        {'name': 'Skin 3', 'image': 'assets/bizon4.jpg'},
      ]
    },
    {
      'name': 'RPD',
      'category': 'LMG',
      'image': 'assets/RPD.jpg',
      'damage': '35',
      'fireRate': '70',
      'accuracy': '65',
      'mobility': '60',
      'range': '70',
      'control': '60',
      'skins': [
        {'name': 'Default', 'image': 'assets/rpd1.jpg'},
        {'name': 'Skin 2', 'image': 'assets/rpd2.jpg'},
        {'name': 'Skin 3', 'image': 'assets/rpd3.jpg'},
      ]
    },
    {
      'name': 'Chopper',
      'category': 'LMG',
      'image': 'assets/Chopper.jpg',
      'damage': '32',
      'fireRate': '75',
      'accuracy': '60',
      'mobility': '55',
      'range': '75',
      'control': '60',
      'skins': [
        {'name': 'Default', 'image': 'assets/chopper2.jpg'},
        {'name': 'Skin 2', 'image': 'assets/chopper3.jpg'},
      ]
    },
    {
      'name': 'Grau',
      'category': 'Assault Rifle',
      'image': 'assets/Grau.jpg',
      'damage': '42',
      'fireRate': '75',
      'accuracy': '70',
      'mobility': '70',
      'range': '65',
      'control': '65',
      'skins': [
        {'name': 'Default', 'image': 'assets/grau2.jpg'},
        {'name': 'Skin 2', 'image': 'assets/grau3.jpg'},
      ]
    },
    {
      'name': 'Arctic',
      'category': 'Sniper',
      'image': 'assets/Arctic.jpg',
      'damage': '95',
      'fireRate': '20',
      'accuracy': '90',
      'mobility': '40',
      'range': '100',
      'control': '50',
      'skins': [
        {'name': 'Default', 'image': 'assets/arctic1.jpg'},
        {'name': 'Skin 2', 'image': 'assets/arctic2.jpg'},
        {'name': 'Skin 3', 'image': 'assets/arctic3.jpg'},
      ]
    },
    {
      'name': 'BY15',
      'category': 'Shotgun',
      'image': 'assets/BY15.jpg',
      'damage': '95',
      'fireRate': '20',
      'accuracy': '35',
      'mobility': '75',
      'range': '25',
      'control': '50',
      'skins': [
        {'name': 'Default', 'image': 'assets/by1.jpg'},
      ]
    },
    {
      'name': 'ZRG',
      'category': 'Sniper',
      'image': 'assets/zrg(1).jpg',
      'damage': '99',
      'fireRate': '15',
      'accuracy': '95',
      'mobility': '30',
      'range': '100',
      'control': '40',
      'skins': [
        {'name': 'Default', 'image': 'assets/zrg(1).jpg'},
        {'name': 'Skin 2', 'image': 'assets/zrg(2).jpg'},
      ]
    },
    {
      'name': 'BP50',
      'category': 'Assault Rifle',
      'image': 'assets/bp1.jpg',
      'damage': '40',
      'fireRate': '80',
      'accuracy': '70',
      'mobility': '75',
      'range': '60',
      'control': '65',
      'skins': [
        {'name': 'Default', 'image': 'assets/bp1.jpg'},
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
