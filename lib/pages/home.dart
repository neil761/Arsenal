import 'package:flutter/material.dart';
import 'package:codm/pages/operator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

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
      'accuracy': '67',
      'mobility': '74',
      'range': '58',
      'control': '44',
      'skins': [
        {'name': 'Mythic - Radiance', 'image': 'assets/ak47(5).jpg'},
      ]
    },
    {
      'name': 'AK117',
      'category': 'Assault Rifle',
      'image': 'assets/AK117.jpg',
      'damage': '25',
      'fireRate': '76',
      'accuracy': '62',
      'mobility': '75',
      'range': '47',
      'control': '46',
      'skins': [
        {'name': 'Mythic - Memento Mori', 'image': 'assets/ak117(5).jpg'},
        {'name': 'Legendary - Dazzling Rhythm', 'image': 'assets/ak117(3).jpg'},
      ]
    },
    {
      'name': 'QQ9', 
      'category': 'SMG', 
      'image': 'assets/QQ9.jpg',
      'damage': '28',
      'fireRate': '83',
      'accuracy': '40',
      'mobility': '102',
      'range': '42',
      'control': '42',
      'skins': [
        {'name': 'Mythic - Dual Kinetics', 'image': 'assets/qq9(5).jpg'},
        {'name': 'Legendary - Moonlight', 'image': 'assets/qq9(2).jpg'},
        {'name': 'Legendary - Albatross', 'image': 'assets/qq9(3).jpg'},
        {'name': 'Legendary - Quantum Flash', 'image': 'assets/qq9(4).jpg'},
        {'name': 'Legendary - Skin 2', 'image': 'assets/qq9(2).jpg'},
        {'name': 'Legendary - Skin 4', 'image': 'assets/qq9(4).jpg'},
      ]
    },
    {
      'name': 'Fennec', 
      'category': 'SMG', 
      'image': 'assets/Fennec.jpg',
      'damage': '23',
      'fireRate': '111',
      'accuracy': '29',
      'mobility': '108',
      'range': '41',
      'control': '24',
      'skins': [
        {'name': 'Mythic - Ascended', 'image': 'assets/fennec(5).jpg'},
        {'name': 'Legendary - Venom Coil', 'image': 'assets/fennec3.jpg'},
      ]
    },
    {
      'name': 'M4', 
      'category': 'Assault Rifle', 
      'image': 'assets/M4.jpg',
      'damage': '26',
      'fireRate': '68',
      'accuracy': '59',
      'mobility': '81',
      'range': '58',
      'control': '54',
      'skins': [
        {'name': 'Legendary - Thermal Shroud', 'image': 'assets/m4(1).jpg'},
        {'name': 'Legendary - Void Implosion', 'image': 'assets/m4(2).jpg'},
        {'name': 'Legendary - Black Gold Royal', 'image': 'assets/m4(4).jpg'},
        {'name': 'Legendary - Skin 2', 'image': 'assets/m4(2).jpg'},
        {'name': 'Legendary - Skin 4', 'image': 'assets/m4(4).jpg'},
      ]
    },
    {
      'name': 'DL Q33', 
      'category': 'Sniper', 
      'image': 'assets/DLQ.jpg',
      'damage': '90',
      'fireRate': '27',
      'accuracy': '59',
      'mobility': '32',
      'range': '99',
      'control': '32',
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
      'damage': '48',
      'fireRate': '45',
      'accuracy': '56',
      'mobility': '69',
      'range': '64',
      'control': '32',
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
      'damage': '29',
      'fireRate': '68',
      'accuracy': '57',
      'mobility': '79',
      'range': '54',
      'control': '55',
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
      'damage': '24',
      'fireRate': '88',
      'accuracy': '56',
      'mobility': '72',
      'range': '53',
      'control': '43',
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
      'damage': '31',
      'fireRate': '70',
      'accuracy': '53',
      'mobility': '59',
      'range': '60',
      'control': '59',
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
      'fireRate': '31',
      'accuracy': '62',
      'mobility': '24',
      'range': '92',
      'control': '32',
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
      'damage': '24x12',
      'fireRate': '28',
      'accuracy': '51',
      'mobility': '73',
      'range': '39',
      'control': '42',
      'skins': [
        {'name': 'Legendary - Glorious Blaze', 'image': 'assets/krm1.jpg'},
        {'name': 'Legendary - Red Fissure', 'image': 'assets/krm2.jpg'},
      ]
    },
    {
      'name': 'Locus',
      'category': 'Sniper',
      'image': 'assets/Locus.jpg',
      'damage': '95',
      'fireRate': '28',
      'accuracy': '59',
      'mobility': '35',
      'range': '95',
      'control': '34',
      'skins': [
        {'image': 'assets/locus(1).jpg'},
        {'image': 'assets/locus(2).jpg'},
        {'image': 'assets/locus3.jpg'},
        {'image': 'assets/locus4.jpg'},
        {'name': 'Legendary - Icy Claws', 'image': 'assets/locus5.jpg'},
        {'name': 'Legendary - Red Comet', 'image': 'assets/locus6.jpg'},
      ]
    },
    {
      'name': 'Bizon',
      'category': 'SMG',
      'image': 'assets/Bizon.jpg',
      'damage': '30',
      'fireRate': '65',
      'accuracy': '62',
      'mobility': '102',
      'range': '52',
      'control': '64',
      'skins': [
        {'name': 'Legendary - Homebrewed Hex', 'image': 'assets/bizon2.jpg'},
        {'name': 'Legendary - Nautilus', 'image': 'assets/bizon3.jpg'},
        {'name': 'Legendary - Nautilus', 'image': 'assets/bizon4.jpg'},
      ]
    },
    {
      'name': 'RPD',
      'category': 'LMG',
      'image': 'assets/RPD.jpg',
      'damage': '31',
      'fireRate': '65',
      'accuracy': '61',
      'mobility': '52',
      'range': '60',
      'control': '47',
      'skins': [
        {'name': 'Legendary - Yellow Jacket', 'image': 'assets/rpd1.jpg'},
        {'name': 'Legendary - Luxury Carving', 'image': 'assets/rpd2.jpg'},
        {'name': 'Legendary - Fate' + 's Judgement', 'image': 'assets/rpd3.jpg'},
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
        {'name': 'Legendary - Rules of the Game', 'image': 'assets/chopper2.jpg'},
        {'name': 'Legendary - Hell Dog', 'image': 'assets/chopper3.jpg'},
      ]
    },
    {
      'name': 'Grau',
      'category': 'Assault Rifle',
      'image': 'assets/Grau.jpg',
      'damage': '27',
      'fireRate': '73',
      'accuracy': '50',
      'mobility': '85',
      'range': '54',
      'control': '59',
      'skins': [
        {'name': 'Mythic - Phantom' + 's Core', 'image': 'assets/grau(1).jpg'},
        {'name': 'Legendary - Burned Soul', 'image': 'assets/grau2.jpg'},
        {'name': 'Legendary - Sapphire Fangs', 'image': 'assets/grau3.jpg'},
      ]
    },
    {
      'name': 'Arctic',
      'category': 'Sniper',
      'image': 'assets/Arctic.jpg',
      'damage': '85',
      'fireRate': '31',
      'accuracy': '59',
      'mobility': '33',
      'range': '95',
      'control': '68',
      'skins': [
        {'image': 'assets/arctic1.jpg'},
        { 'image': 'assets/arctic2.jpg'},
        {'name': 'Legendary - Foxfire Prestige', 'image': 'assets/arctic3.jpg'},
      ]
    },
    {
      'name': 'BY15',
      'category': 'Shotgun',
      'image': 'assets/BY15.jpg',
      'damage': '24x12',
      'fireRate': '29',
      'accuracy': '48',
      'mobility': '71',
      'range': '40',
      'control': '42',
      'skins': [
        {'name': 'Legendary - Boba Blaster', 'image': 'assets/by1.jpg'},
      ]
    },
    {
      'name': 'ZRG',
      'category': 'Sniper',
      'image': 'assets/zrg1.jpg',
      'damage': '95',
      'fireRate': '27',
      'accuracy': '62',
      'mobility': '35',
      'range': '74',
      'control': '40',
      'skins': [
        {'image': 'assets/zrg(1).jpg'},
        {'image': 'assets/zrg(2).jpg'},
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

          Container(
            child: Image.asset('assets/arse.jpg'),
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
