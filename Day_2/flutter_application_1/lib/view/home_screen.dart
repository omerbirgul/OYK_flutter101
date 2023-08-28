import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        centerTitle: true,
      ),
      body: Card(child: ListTile(
        leading: Icon(
          Icons.person,
          color: Colors.deepPurple.shade200,
          size: 40,
        ),
        title: const Text(
          "Name",
          style: TextStyle(fontSize: 22)      ),
          subtitle: const Text(
            "Surname"
          ),
          trailing: IconButton( icon: const Icon(
            Icons.arrow_right,
            size: 40
          ),
          onPressed: (){

          }),
      ),
    ),

  );
  }
}