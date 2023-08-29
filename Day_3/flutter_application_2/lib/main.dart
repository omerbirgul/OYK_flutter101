import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home_screen.dart';

void main() {
  runApp(StateApp());
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: HomeScreen(),
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final controller = TextEditingController();
//   @override
//   void initState() {
//     TextEditingController();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Container(
//               width: 100,
//               height: 100,
//               color: Color.fromARGB(255, 241, 210, 117),
//             ),
//           ),
//           TextField(
//             controller: TextEditingController()
//           ),
//           TextField()
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }
// }