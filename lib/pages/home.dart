import 'package:flutter/material.dart';
import 'package:codm/pages/operator.dart';
import 'package:codm/pages/guns.dart';


class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
      title: Text('Arsenal', 
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
                  child: ElevatedButton(
                child: Image.asset('assets/operator.jpg', width: 250,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Operators()),
                  );
                },
              ),
                  // child: GestureDetector(
                  //   onTap: () {},
                  //   child: Image.asset(
                  //   'assets/operator.jpg',
                  //   width: 250,
                  //   ),
                  // )
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
                'assets/arse.jpg',
                width: 250,
                ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       backgroundColor: Color.fromARGB(255, 28, 28, 28),
//       appBar: AppBar(
//         title: Text('CODM Arsenal', 
//         style: TextStyle(
//           color: Colors.white
//         ),),
//         backgroundColor: const Color.fromARGB(255, 75, 83, 32),
//       ),
//       body: Stack(
//         children: [
//           Image.asset(
//             'assets/bg.png',
//             fit: BoxFit.cover,
//             height: double.infinity,
//           ),
//           Container(
//             child: Text('Operators', 
//                   style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white
//                 ),),
//           ),
//           Container(
//             margin: EdgeInsets.fromLTRB(0, 100, 0, 65),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(width: 2, color: const Color.fromARGB(255, 85, 85, 85)),
//                     borderRadius: BorderRadius.all(Radius.circular(3))
//                   ),
//                   child: GestureDetector(
//                     onTap: () {},
//                     child: Image.asset(
//                     'assets/operator.jpg',
//                     width: 250,
//                     ),
//                   )
//                 )
//               ],
//             ),
//           ),
//               Text('Guns', 
//                   style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white
//                 ),),
//           Container(
//             margin: EdgeInsets.fromLTRB(0, 300, 0, 65),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(width: 2, color: const Color.fromARGB(255, 85, 85, 85)),
//                     borderRadius: BorderRadius.all(Radius.circular(3))
//                   ),
//                 child: Image.asset(
//                 'assets/arse.jpg',
//                 width: 250,
//                 ),
//                 )
//               ],
//             ),
//           )
//         ],
//       )
      
//       ),
//     ),
//   );
// }

