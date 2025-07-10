import 'package:flutter/material.dart';
import 'package:codm/pages/guns.dart'; // Import the detail page

class GunDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve the gun data from the arguments
    final Map<String, String> gun = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(gun['image'] ?? '', 
            width: 350,),
            SizedBox(height: 20),
            Text(gun['name'] ?? '', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 80, 0),
                          child: Text(
                            '33 '
                          ),
                        ),
                        Container(
                          child: Text(
                            'Fire Rate: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            '54 '
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 73, 0),
                          child: Text(
                            '78 '
                          ),
                        ),
                        Container(
                          child: Text(
                            'Mobility: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            '60'
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 95, 0),
                          child: Text(
                            '86'
                          ),
                        ),
                        Container(
                          child: Text(
                            'Control: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            '89'
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
                            
                            ),
                          ),
                        )
                      ],
                    )
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