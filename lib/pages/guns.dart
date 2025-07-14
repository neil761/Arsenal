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
                            gun['damage'] ?? '0'
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
                            gun['fireRate'] ?? '0'
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
                            gun['accuracy'] ?? '0'
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
                            gun['mobility'] ?? '0'
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
                            gun['range'] ?? '0'
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
                            gun['control'] ?? '0'
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
                              Text(
                                skin['name'] ?? '',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
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