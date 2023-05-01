// import 'package:calculator/model/Operation.dart';
// import 'package:calculator/view/button.dart';
// import 'package:flutter/material.dart';

// class Keyboard extends StatelessWidget {
//   Operation oper;
//   Keyboard({super.key, required this.oper});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(
//       children: [
//         const SizedBox(
//           height: 60,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "C",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "del",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "/",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "*",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//           ],
//         ),
////////////////////////////
//         SizedBox(
//           height: 10,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "7",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "8",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "9",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "-",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "4",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "5",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "6",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//             Button(
//                 width: 85,
//                 height: 85,
//                 content: "+",
//                 buttonColor: Colors.blue,
//                 contentColor: Colors.white,
//                 operation: oper,
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               children: [
//                 Row(children: [
//                   Button(
//                       width: 85,
//                       height: 85,
//                       content: "1",
//                       buttonColor: Colors.blue,
//                       contentColor: Colors.white,
//                       operation: oper,
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Button(
//                       width: 85,
//                       height: 85,
//                       content: "2",
//                       buttonColor: Colors.blue,
//                       contentColor: Colors.white,
//                       operation: oper,
//                   ),
//                 ]),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(children: [
//                   Button(
//                       width: 190,
//                       height: 85,
//                       content: "0",
//                       buttonColor: Colors.blue,
//                       contentColor: Colors.white,
//                       operation: oper,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                 ])
//               ],
//             ),
//             Column(
//               children: [
//                 Button(
//                     width: 85,
//                     height: 85,
//                     content: "3",
//                     buttonColor: Colors.blue,
//                     contentColor: Colors.white,
//                     operation: oper,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Button(
//                     width: 85,
//                     height: 85,
//                     content: ".",
//                     buttonColor: Colors.blue,
//                     contentColor: Colors.white,
//                     operation: oper,
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Button(
//                     width: 85,
//                     height: 180,
//                     content: "=",
//                     buttonColor: Colors.blue,
//                     contentColor: Colors.white,
//                     operation: oper,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     ));
//   }
// }
