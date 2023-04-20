import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// void main() {
//   return runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         appBar: AppBar(
//           title: Text('Dicee'),
//           backgroundColor: Colors.red,
//         ),
//         body: DicePage(),
//       ),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }
//
// class DicePage extends StatefulWidget {
//   const DicePage({Key? key}) : super(key: key);
//
//   @override
//   State<DicePage> createState() => _DicePageState();
// }
//
// class _DicePageState extends State<DicePage> {
//   int leftDicenumber = 1;
//   int rightDicenunmber = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//
//         children: [
//
//           Expanded(
//             flex: 1,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextButton(
//                 onPressed: () {
//                   setState(() {
//                     leftDicenumber=Random().nextInt(6) + 1;
//                     print('is updated $leftDicenumber');
//                   });
//                 },
//                 child: Image.asset('images/dice$leftDicenumber.png'),
//               ),
//             ),
//           ),
//
//           Expanded(
//             flex: 1,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextButton(
//                 onPressed: () {
//                   setState(() {
//                     rightDicenunmber=Random().nextInt(6)  + 1;
//                     print('right button');
//                   });
//
//                 },
//                 child: Image.asset('images/dice$rightDicenunmber.png'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//   }



  // exercise both to update at the same time
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 1;
  int rightDicenunmber = 1;
  void changedface(){
    setState(() {
      leftDicenumber=Random().nextInt(6) + 1;
      rightDicenunmber=Random().nextInt(6) + 1;
      print('is updated $leftDicenumber');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(

        children: [

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  changedface();

                },
                child: Image.asset('images/dice$leftDicenumber.png'),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  changedface();


                },
                child: Image.asset('images/dice$rightDicenunmber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

