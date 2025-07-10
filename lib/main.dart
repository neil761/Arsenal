import 'package:codm/pages/guns.dart';
import 'package:codm/pages/operator.dart';
import 'package:flutter/material.dart';
import 'package:codm/pages/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => MainPage(),
      '/home' : (context) => HomePage(),
      '/ops' : (context) => Operator(),
      '/gun' : (context) => GunDetailPage(),
    }, // ⬅ Use custom widget here
  ));
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
              height: 50,
              width: 250,
              child: ElevatedButton(
                child: Text('Play', 
                style: TextStyle(
                  color: Colors.black,
                ),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
