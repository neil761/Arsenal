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
    // Legendaery ops
    {
      'name': 'Cipher - Absolute Resolution', 
      'image': 'assets/ciph6.jpg', 
      'modalImage': 'assets/ciph5.jpg',
      'category': 'Legendary',
      'bio': 'Cipher was unafraid when the simulation rebelled. Indeed, he embraced the chaos'
    },
    {
      'name': 'Fiona St. George - Eternal Blizzard', 
      'image': 'assets/fio6.jpg', 
      'modalImage': 'assets/fio5.jpg',
      'category': 'Legendary',
      'bio': 'The weak shall be pruned, like a branch before winter. St. George will cut through them with ferocity and speed.'
    },
    {
      'name': 'Dark Shepherd - Astral Marauder', 
      'image': 'assets/dark6.jpg', 
      'modalImage': 'assets/dark5.jpg',
      'category': 'Legendary',
      'bio': 'Wherever his ship prowls the void, the Astral Marauder reaps, culling the weak.'
    },
    {
      'name': 'Foxtrot - Deadly Fragments', 
      'image': 'assets/fox6.jpg', 
      'modalImage': 'assets/fox5.jpg',
      'category': 'Legendary',
      'bio': 'Within the Iron Will exists the sum of human knowledge. When Foxtrot entered its mind seeking answers, it knew her,reflecting back at her every tragedy, every mistake, every failure she ever suffered, nearly crusing her under the weight of her regrets.'
    },
    {
      'name': 'Dame - Break of Dawn', 
      'image': 'assets/dame6.jpg', 
      'modalImage': 'assets/dame5.jpg',
      'category': 'Legendary',
      'bio': 'Dame Lives! This many come as a shock to her estranged daughter and former love and current arch rival: Templar. But beneath her cruel exterior beats a passionate and loyal heart.'
    },
    {
      'name': 'Richtofen - Dark Designs', 
      'image': 'assets/rich6.jpg', 
      'modalImage': 'assets/rich5.jpg',
      'category': 'Legendary',
      'bio': 'Rumored to be over a hundred years old, the subject of his own experience.'
    },
    {
      'name': 'Hidora Kai - Cruel Night', 
      'image': 'assets/kai6.jpg', 
      'modalImage': 'assets/kai5.jpg',
      'category': 'Legendary',
      'bio': 'He believed death had claimed him, but the world was not done with him yet. So he lives on, but with a mind clouded by vague memories, the life before fading with each passing day. Is he truly alive, or a shadow of his former self?'
    },
    {
      'name': 'Manta Ray - Aquarian Blade', 
      'image': 'assets/ray6.jpg', 
      'modalImage': 'assets/ray5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/nyx6.jpg', 
      'modalImage': 'assets/nyx5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/soph6.jpg', 
      'modalImage': 'assets/soph5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/ph6.jpg', 
      'modalImage': 'assets/ph5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/price6.jpg', 
      'modalImage': 'assets/price5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/fire6.jpg', 
      'modalImage': 'assets/fire5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/out6.jpg', 
      'modalImage': 'assets/out5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/gun6.jpg', 
      'modalImage': 'assets/gun5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/reap6.jpg', 
      'modalImage': 'assets/reap5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/ghost(6).jpg', 
      'modalImage': 'assets/ghost(5).jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/mace6.jpg', 
      'modalImage': 'assets/mace5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Alias 2', 
      'image': 'assets/nik6.jpg', 
      'modalImage': 'assets/nik5.jpg',
      'category': 'Legendary',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    
    // Mythic (4)
    {
      'name': 'Pia 4', 
      'image': 'assets/pia8.jpg', 
      'modalImage': 'assets/pia7.jpg',
      'category': 'Mythic',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Pia 4', 
      'image': 'assets/ghost8.jpg', 
      'modalImage': 'assets/ghost7.jpg',
      'category': 'Mythic',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Pia 4', 
      'image': 'assets/sir8.jpg', 
      'modalImage': 'assets/sir7.jpg',
      'category': 'Mythic',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Pia 4', 
      'image': 'assets/tem8.jpg', 
      'modalImage': 'assets/tem7.jpg',
      'category': 'Mythic',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
    {
      'name': 'Pia 4', 
      'image': 'assets/spec8.jpg', 
      'modalImage': 'assets/spec7.jpg',
      'category': 'Mythic',
      'bio': 'khhdwbsfdskljbclaskvcdslhifvsbk'
    },
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
            child: ListView.builder(
              padding: EdgeInsets.all(12),
              itemCount: getFilteredOperators().length,
              itemBuilder: (context, index) {
                final op = getFilteredOperators()[index];
                return Container(
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xFF444444),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          op['image']!,
                          width: 90,
                          height: 60,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              op['name']!,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              op['category']!,
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: Color.fromARGB(255, 28, 28, 28),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      op['modalImage'] ?? op['image']!,
                                      fit: BoxFit.fitHeight,
                                      width: 200,
                                      height: 200,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    op['name']!,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    op['category']!,
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    op['bio']!,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  child: Text('Close', style: TextStyle(color: Colors.amber)),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Text('View'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
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
