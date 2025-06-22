import 'package:flutter/material.dart';

class Operators extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
      title: Text('Operators', 
      style: TextStyle(
      color: Colors.white
      ),),
      backgroundColor: const Color.fromARGB(255, 75, 83, 32),
    ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/AK47.jpg',
                  width: 250,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  color: Colors.red,
                  child:Text('AK117', 
                  style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Colors.white,
                )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}