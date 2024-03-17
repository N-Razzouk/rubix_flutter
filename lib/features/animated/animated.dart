// THIS IS WIP

// import 'dart:math';

// import 'package:flutter/material.dart';

// import '../../domain/entities/face.dart';
// import '../widgets/cube_face.dart';

// class AnimatedPage extends StatefulWidget {
//   const AnimatedPage({super.key});

//   @override
//   State<AnimatedPage> createState() => _AnimatedPageState();
// }

// class _AnimatedPageState extends State<AnimatedPage> {
//   double rotations = 0;
//   double startH = 0;
//   double startV = 0;
//   double vertical = 0;
//   double horizontal = 0;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onPanStart: (details) {
//         setState(() {
//           startH = details.globalPosition.dx;
//           startV = details.globalPosition.dy;
//         });
//       },
//       onPanUpdate: (details) {
//         print('pan');
//         debugPrint(details.globalPosition.toString());
//         setState(() {
//           vertical = details.globalPosition.dy - startV;

//           horizontal = details.globalPosition.dx - startH;
//         });
//       },
//       // onVerticalDragStart: (details) {},
//       // onVerticalDragUpdate: (details) {},
//       // onHorizontalDragUpdate: (details) {},
//       child: Scaffold(
//         body: Transform.scale(
//           scale: 3,
//           child: Center(
//             child: AnimatedRotation(
//               turns: rotations,
//               duration: const Duration(seconds: 1),
//               child: Transform(
//                 transform: Matrix4.identity()
//                   ..rotateX(pi / 2 * vertical / 100)
//                   ..rotateY(pi / 2 * horizontal / 100),
//                 child: CubeFaceWidget(
//                   face: Face.plain(size: 3, value: 3),
//                   faceName: 'right',
//                 ),
//               ),
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(
//               () {
//                 rotations += 0.25;
//               },
//             );
//           },
//           child: const Icon(
//             Icons.delete,
//           ),
//         ),
//       ),
//     );
//   }
// }
