import 'package:flutter/material.dart';
import 'pages/operator.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        title: Text('CODM Arsenal', 
        style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: const Color.fromARGB(255, 75, 83, 32),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
                Text('Operators', 
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: const Color.fromARGB(255, 85, 85, 85)),
                    borderRadius: BorderRadius.all(Radius.circular(3))
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                    'lib/assets/operator.jpg',
                    width: 250,
                    ),
                  )
                )
              ],
            ),
          ),
              Text('Guns', 
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: const Color.fromARGB(255, 85, 85, 85)),
                    borderRadius: BorderRadius.all(Radius.circular(3))
                  ),
                child: Image.asset(
                'lib/assets/arse.jpg',
                width: 250,
                ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  ));
}

