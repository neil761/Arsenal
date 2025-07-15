import 'package:flutter/material.dart';

class GunDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve the gun data from the arguments with null checking
    final arguments = ModalRoute.of(context)?.settings.arguments;
    
    if (arguments == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('No gun data provided'),
        ),
      );
    }
    
    final Map<String, dynamic> gun = arguments as Map<String, dynamic>;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 75, 83, 32),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset(gun['image'] ?? '', width: 350),
            ),
            SizedBox(height: 20),
            Text(gun['name'] ?? '', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 70),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'Damage: ',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 80, 0),
                          child: Text(
                            gun['damage'] ?? '0',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Fire Rate: ',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Text(
                            gun['fireRate'] ?? '0',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 70),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'Accuracy: ',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 73, 0),
                          child: Text(
                            gun['accuracy'] ?? '0',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Mobility: ',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Text(
                            gun['mobility'] ?? '0',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 70),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'Range: ',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 95, 0),
                          child: Text(
                            gun['range'] ?? '0',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Control: ',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Text(
                            gun['control'] ?? '0',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'SKINS',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      itemCount: (gun['skins'] as List<dynamic>?)?.length ?? 0,
                      itemBuilder: (context, index) {
                        final skins = gun['skins'] as List<dynamic>?;
                        if (skins == null || index >= skins.length) return Container();
                        final skin = skins[index] as Map<String, dynamic>;
                        final String? skinName = skin['name'];
                        Color? bgColor;
                        Color textColor = Colors.white;
                        if (skinName != null && skinName.contains('Mythic')) {
                          bgColor = Colors.red;
                        } else if (skinName != null && skinName.contains('Legendary')) {
                          bgColor = Colors.orange[300];
                        } else {
                          bgColor = null;
                          textColor = Colors.black;
                        }
                        return Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.grey, width: 2),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    skin['image'] ?? '',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              if (skinName != null)
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: bgColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    skinName,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              if (skinName == null)
                                SizedBox.shrink(),
                            ],
                          ),
                        );
                      },
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}  